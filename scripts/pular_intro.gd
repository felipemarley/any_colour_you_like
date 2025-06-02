extends CheckButton


func _on_toggled(toggled_on: bool) -> void:
	if toggled_on == true:
		Global.pular_intro = true
	else:
		Global.pular_intro = false
