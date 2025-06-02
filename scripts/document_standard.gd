extends Panel

var base_zoom = 1.0

@export_multiline var document_text: = ""
@export_node_path("RichTextLabel") var text_path: NodePath = ""
@export_node_path("TextureRect") var texture_path: NodePath = ""

var is_dragging := false
var drag_offset := Vector2.ZERO
var margin := 5  # Margem de segurança para não encostar nas bordas

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
		var new_position = get_global_mouse_position() - drag_offset
		global_position = _clamp_position_to_viewport(new_position)

func _clamp_position_to_viewport(position: Vector2) -> Vector2:
	var viewport_size = get_viewport_rect().size
	var doc_size = size
	
	# Limita a posição X
	position.x = clamp(position.x, margin, viewport_size.x - doc_size.x - margin)
	
	# Limita a posição Y
	position.y = clamp(position.y, margin, viewport_size.y - doc_size.y - margin)
	
	return position

func _set_stamp(texture): 
	get_node(texture_path).texture = texture
	get_node(texture_path).show()
