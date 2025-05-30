extends Control
@onready var creditos: ColorRect = $creditos

@onready var main_buttons: VBoxContainer = $MarginContainer/MainButtons
@onready var painel_configuracoes: Panel = $painel_configuracoes


func _on_sair_pressed() -> void:
	get_tree().quit()


func _on_iniciar_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/intro.tscn")
	
func _ready() -> void:
	main_buttons.visible = true
	painel_configuracoes.visible = false


func _on_creditos_pressed() -> void:
	creditos.show()


func _on_voltar_pressed() -> void:
	creditos.hide()


func _on_configuracoes_pressed() -> void:
	main_buttons.visible = false
	painel_configuracoes.visible = true


func _on_bttn_voltar_das_configs_pressed() -> void:
	_ready()
