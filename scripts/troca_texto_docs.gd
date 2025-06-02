extends Node

# Referências (serão injetadas no setup)
var rg: Control
var certidao: Control
var declaracao: Control
var anim_player: AnimatedSprite2D

var rg_zoom: Control
var certidao_zoom: Control
var declaracao_zoom: Control

# Dados organizados de forma mais eficiente
var documentos_data = {
	"RG": {
		"textos": {
			"blue-01": "RG 01 - Azul Claro",
			"blue-02": "RG 02 - Azul Médio",
			"blue-03": "RG 03 - Azul Escuro",
			"green-01": "RG 04 - Verde",
			"purple-01": "RG 05 - Roxo",
			"red-01": "RG 06 - Vermelho",
			"yellow-01": "RG 07 - Amarelo"
		},
		"texturas": {} # RG não usa texturas no exemplo
	},
	"certidao": {
		"textos": {
			"blue-01": "Certidão 01 - Azul Claro",
			"blue-02": "Certidão 02 - Azul Médio",
			"blue-03": "Certidão 03 - Azul Escuro",
			"green-01": "Certidão 04 - Verde",
			"purple-01": "Certidão 05 - Roxo",
			"red-01": "Certidão 06 - Vermelho",
			"yellow-01": "Certidão 07 - Amarelo"
		},
		"texturas": {
			"blue-01": "res://assets/documents/certidao-nasc-001.png",
			"blue-02": "res://assets/documents/certidao-nasc-002.png",
			"blue-03": "res://assets/documents/certidao-nasc-003.png",
			"green-01": "res://assets/documents/certidao-nasc-004.png",
			"purple-01": "res://assets/documents/certidao-nasc-001.png",
			"red-01": "res://assets/documents/certidao-nasc-002.png",
			"yellow-01": "res://assets/documents/certidao-nasc-003.png"
		}
	},
	"declaracao": {
		"textos": {
			"blue-01": "Declaração 01 - Azul Claro",
			"blue-02": "Declaração 02 - Azul Médio",
			"blue-03": "Declaração 03 - Azul Escuro",
			"green-01": "Declaração 04 - Verde",
			"purple-01": "Declaração 05 - Roxo",
			"red-01": "Declaração 06 - Vermelho",
			"yellow-01": "Declaração 07 - Amarelo"
		},
		"texturas": {} # Declaração não usa texturas no exemplo
	}
}

func setup(document_rg: Control, document_certidao: Control, document_declaracao: Control, 
		   document_rg_zoom: Control, document_certidao_zoom: Control, document_declaracao_zoom: Control,
		  animation_player: AnimatedSprite2D):
	
	self.rg = document_rg
	self.certidao = document_certidao
	self.declaracao = document_declaracao
	self.rg_zoom = document_rg_zoom
	self.certidao_zoom = document_certidao_zoom
	self.declaracao_zoom = document_declaracao_zoom
	self.anim_player = animation_player
	
	# Pré-carrega todas as texturas
	_preload_textures()
	
	# Conecta sinais
	if anim_player:
		_connect_animation_signals()
		print("✅ DocumentManager configurado com sucesso")
	else:
		printerr("❌ AnimationPlayer não encontrado!")

func _preload_textures():
	# Pré-carrega todas as texturas para evitar atrasos
	for doc_type in documentos_data:
		if documentos_data[doc_type].has("texturas"):
			for anim_name in documentos_data[doc_type]["texturas"]:
				var path = documentos_data[doc_type]["texturas"][anim_name]
				documentos_data[doc_type]["texturas"][anim_name] = load(path) as Texture2D

func _connect_animation_signals():
	# Remove conexões existentes para evitar duplicatas
	if anim_player.animation_finished.is_connected(_on_animation_changed):
		anim_player.animation_finished.disconnect(_on_animation_changed)
	if anim_player.animation_looped.is_connected(_on_animation_changed):
		anim_player.animation_looped.disconnect(_on_animation_changed)
	
	# Conecta novos sinais
	anim_player.animation_finished.connect(_on_animation_changed)
	anim_player.animation_looped.connect(_on_animation_changed)
	
	# Atualização inicial
	_update_documents(anim_player.animation)

func _on_animation_changed():
	_update_documents(anim_player.animation)

func _update_documents(animation_name: String):
	print("🔄 Atualizando documentos para animação:", animation_name)
	
	# Atualiza RG
	_update_document("RG", rg, rg_zoom, animation_name)
	
	# Atualiza Certidão
	_update_document("certidao", certidao, certidao_zoom, animation_name)
	
	# Atualiza Declaração
	_update_document("declaracao", declaracao, declaracao_zoom, animation_name)

func _update_document(doc_type: String, doc_normal: Control, doc_zoom: Control, anim_name: String):
	if not doc_normal or not doc_zoom:
		printerr("❌ Documento ", doc_type, " não encontrado!")
		return
	
	var rich_label = doc_normal.get_node("RichTextLabel") as RichTextLabel
	var rich_label_zoom = doc_zoom.get_node("RichTextLabel") as RichTextLabel
	
	if rich_label and rich_label_zoom and anim_name in documentos_data[doc_type]["textos"]:
		# Atualiza texto
		var texto = documentos_data[doc_type]["textos"][anim_name]
		rich_label.text = texto
		rich_label_zoom.text = texto
		rich_label.visible = true
		rich_label_zoom.visible = true
		print("📄 Texto definido em ", doc_type, ": ", texto)
	else:
		printerr("❌ RichTextLabel não encontrado ou animação inválida para ", doc_type)
	
	# Atualiza textura se existir para este tipo de documento
	if documentos_data[doc_type].has("texturas") and anim_name in documentos_data[doc_type]["texturas"]:
		var texture_rect = doc_normal.get_node("TextureRect") as TextureRect
		var texture_rect_zoom = doc_zoom.get_node("TextureRect") as TextureRect
		
		if texture_rect and texture_rect_zoom:
			var texture = documentos_data[doc_type]["texturas"][anim_name]
			texture_rect.texture = texture
			texture_rect_zoom.texture = texture
			print("🖼️ Textura definida em ", doc_type)
		else:
			printerr("❌ TextureRect não encontrado em ", doc_type)
