extends AnimationPlayer

func _ready() -> void:
	# Conecta o sinal de animação terminada
	animation_finished.connect(_on_animation_finished)
	play("entrada-aviso")

func _on_animation_finished(anim_name: String):
	if anim_name == "entrada-aviso":
		if Global.pular_intro == false:
			get_tree().change_scene_to_file("res://scenes/screens/intro.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/screens/game.tscn")
