extends Node

@onready var regras = $"../../../documents/regras"

func _ready():
	regras.visible = true

func _on_pressed() -> void:
	regras.visible = not regras.visible  # Alterna visibilidade
