extends AnimatedSprite2D

signal animacao_mudou(nome_animacao)

@onready var shader_material := material as ShaderMaterial

var appear_duration := 2.5
var elapsed := 0.0
var animacao_atual := ""
var proxima_animacao := ""

func _ready():
	modulate.a = 0.0
	if shader_material:
		shader_material.set_shader_parameter("blur_amount", 8.0)
	
	# Conecta os sinais de animação
	animation_finished.connect(_on_animation_finished)
	animation_looped.connect(_on_animation_looped)
	
	await get_tree().create_timer(0.1).timeout
	sortear_animacao()

func sortear_animacao():
	randomize()
	var animacoes_disponiveis = sprite_frames.get_animation_names()
	if animacoes_disponiveis.size() > 0:
		proxima_animacao = animacoes_disponiveis[randi() % animacoes_disponiveis.size()]
		play(proxima_animacao)
		print("▶️ Tocando animação:", proxima_animacao)

func _on_animation_finished():
	if proxima_animacao != animacao_atual:
		animacao_atual = proxima_animacao
		emit_signal("animacao_mudou", animacao_atual)
		print("🔔 Sinal emitido (finished):", animacao_atual)
	sortear_animacao()

func _on_animation_looped():
	if proxima_animacao != animacao_atual:
		animacao_atual = proxima_animacao
		emit_signal("animacao_mudou", animacao_atual)
		print("🔔 Sinal emitido (looped):", animacao_atual)

func _process(delta):
	if elapsed < appear_duration:
		elapsed += delta
		var t = elapsed / appear_duration
		if shader_material:
			shader_material.set_shader_parameter("blur_amount", lerp(8.0, 0.0, t))
		modulate.a = lerp(0.0, 1.0, t)
	else:
		if shader_material:
			shader_material.set_shader_parameter("blur_amount", 0.0)
		modulate.a = 1.0
		set_process(false)
