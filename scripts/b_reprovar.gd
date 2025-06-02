extends TextureButton
@onready var rg = $"../rg"
@onready var certidao = $"../certidao"
@onready var declaracao = $"../declaracao"
@onready var rg_zoom = $"../../../ZOOM/rg"
@onready var declaracao_zoom = $"../../../ZOOM/declaracao"
@onready var certidao_zoom = $"../../../ZOOM/certidao"

func _on_pressed() -> void:
	Global.reprovados += 1
	rg.visible = false
	certidao.visible = false
	declaracao.visible = false
	rg_zoom.visible = false
	certidao_zoom.visible = false
	declaracao_zoom.visible = false
