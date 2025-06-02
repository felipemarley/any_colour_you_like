extends ColorRect

func _process(delta: float) -> void:
	$texto_resumo_final.text = (
	"FIM DO PRIMEIRO DIA\n\n" +
	"VOCÊ APROVOU [color=green]" + str(Global.aprovados) + "[/color] PESSOAS\n" +
	"VOCÊ REPROVOU [color=red]" + str(Global.reprovados) + "[/color] PESSOAS\n\n" +
	"VOCÊ ESTÁ MESMO LEVANDO O SISTEMA A SÉRIO?\n\n" +
	"OBRIGADO POR JOGAR NOSSA ALPHA"
)



func _on_voltar_pressed() -> void:
	Global.aprovados = 0
	Global.reprovados = 0
	get_tree().change_scene_to_file("res://scenes/screens/main_menu.tscn")

func _on_sair_pressed() -> void:
	get_tree().quit()
