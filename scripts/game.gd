extends Control

func _ready():
	# Injeta as dependências
	DocumentManager.setup(
		$HSplitContainer/documents/rg,
		$HSplitContainer/documents/certidao,
		$HSplitContainer/documents/declaracao,
		$HSplitContainer/SubViewportContainer/SubViewport/et
	)
