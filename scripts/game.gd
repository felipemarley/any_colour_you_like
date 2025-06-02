extends Control

class_name ZoomSystem

# Configurações exportáveis (ajuste no Editor)
@export var zoom_scale: float = 2.0
@export var document: Document
@export var lupa: Area2D
@export var document_zoom: Node2D

# Variáveis de estado
var lupa_selected: bool = false
var zoom_active: bool = false

func _ready():
	# Configuração inicial
	document_zoom.hide()
	document_zoom.scale = Vector2(zoom_scale, zoom_scale)
	
	# Conecta os sinais de input
	document.input_event.connect(_on_document_clicked)
	lupa.input_event.connect(_on_lupa_clicked)

# --- Lógica da Lupa ---
func _on_lupa_clicked(_viewport: Node, event: InputEvent, _shape_idx: int):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		lupa_selected = !lupa_selected
		lupa.modulate.a = 0.7 if lupa_selected else 1.0  # Efeito visual

# --- Lógica do Documento (Zoom) ---
func _on_document_clicked(_viewport: Node, event: InputEvent, _shape_idx: int):
	if lupa_selected and event is InputEventMouseButton and event.pressed:
		toggle_zoom(get_global_mouse_position())

func toggle_zoom(click_position: Vector2):
	zoom_active = !zoom_active
	
	if zoom_active:
		# Ativa o zoom
		document.hide()
		document_zoom.show()
		document_zoom.position = click_position
		
		# Copia o conteúdo do documento (opcional: usar ViewportTexture para melhor performance)
		var doc_copy = document.get_child(0).duplicate()  # Copia o Sprite2D
		document_zoom.add_child(doc_copy)
		doc_copy.position = -click_position * (zoom_scale - 1)
	else:
		# Desativa o zoom
		document.show()
		document_zoom.hide()
		for child in document_zoom.get_children():  # Limpa cópias
			child.queue_free()

# --- Movimento Suave da Lupa ---
func _process(delta):
	if lupa_selected:
		lupa.position = lupa.position.lerp(get_global_mouse_position(), delta * 20)
