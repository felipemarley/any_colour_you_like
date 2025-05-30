extends Panel

var dragging_document: Document = null

func _ready() -> void:
	pass

#auxiliar functions
func _get_drag_data(at_position: Vector2) -> Variant:
	var document = Document.new()
	document.size = Vector2(100, 50)
	set_drag_preview(document)
	return document
func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return data is Document
func _drop_data(at_position: Vector2, data: Variant) -> void:
	dragging_document = data
