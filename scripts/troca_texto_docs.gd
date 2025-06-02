extends Node

# Referências
var rg: Control
var certidao: Control
var declaracao: Control
var anim_player: AnimatedSprite2D

var rg_zoom: Control
var certidao_zoom: Control
var declaracao_zoom: Control

var documentos_data = {}

func setup(document_rg: Control, document_certidao: Control, document_declaracao: Control, 
		   document_rg_zoom: Control, document_certidao_zoom: Control, document_declaracao_zoom: Control,
		  animation_player: AnimatedSprite2D):
	
	# Carrega os dados
	documentos_data = DocumentData.get_documentos_data()
	
	# Configura referências
	self.rg = document_rg
	self.certidao = document_certidao
	self.declaracao = document_declaracao
	self.rg_zoom = document_rg_zoom
	self.certidao_zoom = document_certidao_zoom
	self.declaracao_zoom = document_declaracao_zoom
	self.anim_player = animation_player
	
	# Pré-carrega texturas
	_preload_textures()
	
	# Configura sinais
	if anim_player:
		_connect_animation_signals()
		print("✅ DocumentManager configurado com sucesso")
	else:
		printerr("❌ AnimationPlayer não encontrado!")

func _preload_textures():
	for doc_type in documentos_data:
		if documentos_data[doc_type].has("texturas"):
			for anim_name in documentos_data[doc_type]["texturas"]:
				var path = documentos_data[doc_type]["texturas"][anim_name]
				documentos_data[doc_type]["texturas"][anim_name] = load(path) as Texture2D

func _connect_animation_signals():
	if anim_player.animation_finished.is_connected(_on_animation_changed):
		anim_player.animation_finished.disconnect(_on_animation_changed)
	if anim_player.animation_looped.is_connected(_on_animation_changed):
		anim_player.animation_looped.disconnect(_on_animation_changed)
	
	anim_player.animation_finished.connect(_on_animation_changed)
	anim_player.animation_looped.connect(_on_animation_changed)
	
	_update_documents(anim_player.animation)

func _on_animation_changed():
	_update_documents(anim_player.animation)

func _update_documents(animation_name: String):
	print("🔄 Atualizando documentos para animação:", animation_name)
	_update_document("RG", rg, rg_zoom, animation_name)
	_update_document("certidao", certidao, certidao_zoom, animation_name)
	_update_document("declaracao", declaracao, declaracao_zoom, animation_name)

func _update_document(doc_type: String, doc_normal: Control, doc_zoom: Control, anim_name: String):
	if not doc_normal or not doc_zoom:
		printerr("❌ Documento ", doc_type, " não encontrado!")
		return
	
	var rich_label = doc_normal.get_node("RichTextLabel") as RichTextLabel
	var rich_label_zoom = doc_zoom.get_node("RichTextLabel") as RichTextLabel
	
	if rich_label and rich_label_zoom and anim_name in documentos_data[doc_type]["textos"]:
		var texto = documentos_data[doc_type]["textos"][anim_name]
		rich_label.text = texto
		rich_label_zoom.text = texto
		rich_label.visible = true
		rich_label_zoom.visible = true
		print("📄 Texto definido em ", doc_type, ": ", texto)
	else:
		printerr("❌ RichTextLabel não encontrado ou animação inválida para ", doc_type)
	
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
