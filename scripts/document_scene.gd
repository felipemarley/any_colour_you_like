extends Panel

func _ready() -> void:
	$declaracao._set_stamp(preload("res://icon.svg"))
	$declaracao.double_click.connect(spotlight_document)
	
func spotlight_document():
	$declaracao.reparent(get_node("../CenterContainer"))
	get_node("../CenterContainer").show()
