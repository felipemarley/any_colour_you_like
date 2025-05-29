extends Control
@onready var creditos: ColorRect = $creditos


func _on_sair_pressed() -> void:
	get_tree().quit()


func _on_iniciar_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/intro.tscn")


func _on_creditos_pressed() -> void:
	creditos.show()


func _on_voltar_pressed() -> void:
	creditos.hide()
