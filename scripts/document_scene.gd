extends Panel

@onready var botao_anterior: Button = $b_aprovar
@onready var botao_proximo: Button = $b_reprovar
@onready var sprite: AnimatedSprite2D = get_node("../SubViewportContainer/SubViewport/et")

const NOVA_CENA = "res://cenas/proxima_etapa.tscn"

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

		# Exibe a primeira animação logo ao iniciar
		animacao_atual = animacoes_restantes.pop_front()
		print("▶️ Primeira animação (inicial):", animacao_atual)
		sprite.play(animacao_atual)

		# Aplica efeitos visuais iniciais
		sprite.modulate.a = 0.0
		if sprite.material and sprite.material is ShaderMaterial:
			sprite.material.set_shader_parameter("blur_amount", 8.0)
		sprite.elapsed = 0.0
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
		get_tree().change_scene_to_file(NOVA_CENA)
		return

	var nova_animacao = animacoes_restantes.pop_front()
	animacao_atual = nova_animacao
	print("▶️ Nova animação:", animacao_atual)

	sprite.modulate.a = 0.0
	if sprite.material and sprite.material is ShaderMaterial:
		sprite.material.set_shader_parameter("blur_amount", 8.0)
	sprite.elapsed = 0.0
	sprite.play(animacao_atual)

	await get_tree().create_timer(0.2).timeout
	trocando_animacao = false
