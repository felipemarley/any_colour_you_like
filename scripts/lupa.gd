extends TextureButton

# Referências aos nós
@onready var rg_zoom = get_node("../../../../ZOOM/rg")
@onready var rg = $"../../../documents/rg"

@onready var certidao_zoom = get_node("../../../../ZOOM/certidao")
@onready var certidao = $"../../../documents/certidao"

@onready var declaracao_zoom = get_node("../../../../ZOOM/declaracao")
@onready var declaracao = $"../../../documents/declaracao"

var zoom_active: bool = false

func _ready():
	# Garantir que os ZOOMs comecem invisíveis
	rg_zoom.visible = false
	certidao_zoom.visible = false  # Corrigido 'viseble' para 'visible'
	declaracao_zoom.visible = false  # Corrigido 'viseble' para 'visible'
	
	# Conectar o sinal de pressionamento
	self.toggled.connect(_on_lupa_toggled)
	# Configurar como botão toggle
	self.toggle_mode = true

func _on_lupa_toggled(button_pressed):
	zoom_active = button_pressed
	
	if rg.visible == true:
		rg_zoom.visible = zoom_active  # Corrigido atribuição direta
		print("Zoom_RG ", "ativado" if zoom_active else "desativado")
	else:
		print("RG não está visível")
	
	if certidao.visible == true:
		certidao_zoom.visible = zoom_active  # Corrigido falta de '.visible'
		print("Zoom_certidao ", "ativado" if zoom_active else "desativado")
	else:
		print("Certidão não está visível")
		
	if declaracao.visible == true:
		declaracao_zoom.visible = zoom_active  # Corrigido falta de '.visible'
		print("Zoom_Declaracao ", "ativado" if zoom_active else "desativado")
	else:
		print("Declaração não está visível")
