extends Control

func _ready():
	# Injeta as dependências
	DocumentManager.setup(
		$HSplitContainer/documents/rg,
		$HSplitContainer/documents/certidao,
		$HSplitContainer/documents/declaracao,
		$ZOOM/rg,
		$ZOOM/certidao,
		$ZOOM/declaracao,
		$HSplitContainer/SubViewportContainer/SubViewport/et
	)
