extends ColorRect

func _process(delta: float) -> void:
	$texto_resumo_final.text = "FIM DO PRIMEIRO DIA

VOCÊ APROVOU "+str(Global.aprovados)+" PESSOAS
VOCÊ REPROVOU "+str(Global.reprovados)+" PESSOAS

VOCÊ ESTÁ MESMO LEVANDO O SISTEMA A SÉRIO?

OBRIGADO POR JOGAR NOSSA ALPHA"

func _on_voltar_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/screens/main_menu.tscn")

func _on_sair_pressed() -> void:
	get_tree().quit()
