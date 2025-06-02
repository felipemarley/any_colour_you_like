extends Button


func _on_pressed() -> void:
	Global.aprovados = 0
	Global.reprovados = 0
	get_tree().change_scene_to_file("res://scenes/screens/main_menu.tscn")
