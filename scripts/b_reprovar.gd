extends Button
@onready var rg = $"../rg"
@onready var certidao = $"../certidao"
@onready var declaracao = $"../declaracao"

func _on_pressed() -> void:
	rg.visible = false
	certidao.visible = false
	declaracao.visible = false
