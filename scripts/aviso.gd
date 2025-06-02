extends AnimationPlayer

func _ready() -> void:
	animation_finished.connect(_on_animation_finished)
	
	# Diminui a velocidade para 0.5 (2x mais lenta)
	set_speed_scale(0.25)
	
	play("entrada-aviso")

func _on_animation_finished(anim_name: String):
	if anim_name == "entrada-aviso":
		if Global.pular_intro == false:
			get_tree().change_scene_to_file("res://scenes/screens/intro.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/screens/game.tscn")
