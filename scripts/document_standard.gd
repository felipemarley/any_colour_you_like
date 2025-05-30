class_name Document
extends Panel

@export_multiline var document_text: = ""
@export_node_path("RichTextLabel") var text_path: NodePath = ""
@export_node_path("TextureRect") var texture_path: NodePath = ""

var is_dragging := false
var drag_offset := Vector2.ZERO

func _ready() -> void:
	get_node(text_path).text = document_text
	get_node(text_path).fit_content = true

func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				is_dragging = true
				drag_offset = get_global_mouse_position() - global_position
				move_to_front() 
			else:
				is_dragging = false
	elif event is InputEventMouseMotion and is_dragging:
		global_position = get_global_mouse_position() - drag_offset

func _set_stamp(texture): 
	get_node(texture_path).texture = texture
	get_node(texture_path).show()
