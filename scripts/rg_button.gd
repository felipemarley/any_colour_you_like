extends TextureButton

@onready var rg = $"../../../documents/rg"

func _ready():
	rg.visible = false

func _on_pressed() -> void:
	rg.visible = not rg.visible  # Alterna visibilidade
