extends AnimatedSprite2D

@onready var shader_material := material as ShaderMaterial

var appear_duration := 2.5
var elapsed := 0.0

func _ready():
	modulate.a = 0.0
	if shader_material:
		shader_material.set_shader_parameter("blur_amount", 8.0)
	
	# Sorteio de animação aleatória
	randomize()
	var animacoes_disponiveis = sprite_frames.get_animation_names()
	if animacoes_disponiveis.size() > 0:
		var animacao_aleatoria = animacoes_disponiveis[randi() % animacoes_disponiveis.size()]
		play(animacao_aleatoria)
	else:
		play()  # fallback

	set_process(true)

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
