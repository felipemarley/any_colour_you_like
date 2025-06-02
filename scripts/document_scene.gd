extends Panel

@onready var botao_anterior: Button = $b_aprovar
@onready var botao_proximo: Button = $b_reprovar
@onready var sprite: AnimatedSprite2D = get_node("../SubViewportContainer/SubViewport/et")
@onready var ending: ColorRect = $"../../ending"
const NOVA_CENA = "res://cenas/proxima_etapa.tscn"
const FADE_IN_DURACAO = 0.5  # segundos

var animacoes_disponiveis := []
var animacoes_restantes := []
var animacao_atual := ""
var trocando_animacao := false

func _ready():
	print("Painel pronto")

	if botao_anterior:
		botao_anterior.pressed.connect(_trocar_animacao)
	else:
		push_error("❌ Botão anterior não encontrado")

	if botao_proximo:
		botao_proximo.pressed.connect(_trocar_animacao)
	else:
		push_error("❌ Botão próximo não encontrado")

	if sprite:
		animacoes_disponiveis = sprite.sprite_frames.get_animation_names()
		animacoes_restantes = animacoes_disponiveis.duplicate()
		animacoes_restantes.shuffle()

		animacao_atual = animacoes_restantes.pop_front()
		print("▶️ Primeira animação (inicial):", animacao_atual)
		_reiniciar_sprite(animacao_atual)
	else:
		push_error("❌ AnimatedSprite2D não encontrado no caminho especificado.")

func _trocar_animacao():
	if trocando_animacao:
		return
	trocando_animacao = true

	if not sprite:
		trocando_animacao = false
		return

	if animacoes_restantes.is_empty():
		print("✅ Todas as animações foram exibidas. Indo para próxima cena.")
		ending.show()
		return

	var nova_animacao = animacoes_restantes.pop_front()
	animacao_atual = nova_animacao
	print("▶️ Nova animação:", animacao_atual)

	await _reiniciar_sprite(animacao_atual)

	trocando_animacao = false

func _reiniciar_sprite(nome_animacao: String) -> void:
	sprite.visible = true
	sprite.play(nome_animacao)
	sprite.frame = 0
	sprite.elapsed = 0.0
	sprite.modulate.a = 0.0

	if sprite.material and sprite.material is ShaderMaterial:
		sprite.material.set_shader_parameter("blur_amount", 8.0)

	await _fazer_fade_in()

func _fazer_fade_in() -> void:
	var duracao := FADE_IN_DURACAO
	var tempo := 0.0
	while tempo < duracao:
		await get_tree().process_frame
		tempo += get_process_delta_time()
		var t := tempo / duracao
		sprite.modulate.a = clamp(t, 0.0, 1.0)
	sprite.modulate.a = 1.0  # garante opacidade final
