extends ColorRect


func _on_voltar_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/screens/main_menu.tscn")


func _on_sair_pressed() -> void:
	get_tree().quit()
