extends TextureButton

@onready var declaracao = $"../../../documents/declaracao"

func _ready():
	declaracao.visible = false

func _on_pressed() -> void:
	declaracao.visible = not declaracao.visible  # Alterna visibilidade
