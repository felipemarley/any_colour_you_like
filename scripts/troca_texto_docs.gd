extends Node

# Referências (serão injetadas no setup)
var rg: Control
var certidao: Control
var declaracao: Control
var anim_player: AnimatedSprite2D

var rg_zoom: Control
var certidao_zoom: Control
var declaracao_zoom: Control

var textos_animacoes_RG = {
	"blue-01": "RG 01 - Azul Claro",
	"blue-02": "RG 02 - Azul Médio",
	"blue-03": "RG 03 - Azul Escuro",
	"green-01": "RG 04 - Verde",
	"purple-01": "RG 05 - Roxo",
	"red-01": "RG 06 - Vermelho",
	"yellow-01": "RG 07 - Amarelo"
};

var textos_animacoes_certidao = {
	"blue-01": "Certidão 01 - Azul Claro",
	"blue-02": "Certidão 02 - Azul Médio",
	"blue-03": "Certidão 03 - Azul Escuro",
	"green-01": "Certidão 04 - Verde",
	"purple-01": "Certidão 05 - Roxo",
	"red-01": "Certidão 06 - Vermelho",
	"yellow-01": "Certidão 07 - Amarelo"
};

var textos_animacoes_declaracao = {
	"blue-01": "Declaração 01 - Azul Claro",
	"blue-02": "Declaração 02 - Azul Médio",
	"blue-03": "Declaração 03 - Azul Escuro",
	"green-01": "Declaração 04 - Verde",
	"purple-01": "Declaração 05 - Roxo",
	"red-01": "Declaração 06 - Vermelho",
	"yellow-01": "Declaração 07 - Amarelo"
};

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
	
	# Conecta sinais
	if anim_player:
		_connect_animation_signals()
		print("✅ DocumentManager configurado com sucesso")
	else:
		printerr("❌ AnimationPlayer não encontrado!")

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
	_update_texts(anim_player.animation)

func _on_animation_changed():
	_update_texts(anim_player.animation)

func _update_texts(animation_name: String):
	print("🔄 Atualizando textos para animação:", animation_name)
	
	if rg:
		var rich_text_label_rg = rg.get_node("RichTextLabel")
		var rich_text_label_certidao = certidao.get_node("RichTextLabel")
		var rich_text_label_declaracao = declaracao.get_node("RichTextLabel")
		
		var rich_text_label_rg_zoom = rg_zoom.get_node("RichTextLabel")
		var rich_text_label_certidao_zoom = certidao_zoom.get_node("RichTextLabel")
		var rich_text_label_declaracao_zoom = declaracao_zoom.get_node("RichTextLabel")
		
		if rich_text_label_rg and animation_name in textos_animacoes_RG:
			rich_text_label_rg.text = textos_animacoes_RG[animation_name]
			rich_text_label_rg_zoom.text = textos_animacoes_RG[animation_name]
			# Garante que está visível
			rich_text_label_rg.visible = true
			rich_text_label_rg_zoom.visible = true
			
			print("📄 Texto definido no RG:", textos_animacoes_RG[animation_name])
		else:
			printerr("❌ RichTextLabel não encontrado ou animação inválida")
		
		if rich_text_label_certidao and animation_name in textos_animacoes_certidao:
			rich_text_label_certidao.text = textos_animacoes_certidao[animation_name]
			rich_text_label_certidao_zoom.text = textos_animacoes_certidao[animation_name]
			# Garante que está visível
			rich_text_label_certidao.visible = true
			rich_text_label_certidao_zoom.visible = true
			
			print("📄 Texto definido na Certidão:", textos_animacoes_certidao[animation_name])
		else:
			printerr("❌ RichTextLabel não encontrado ou animação inválida")
		
		if rich_text_label_declaracao and animation_name in textos_animacoes_declaracao:
			rich_text_label_declaracao.text = textos_animacoes_declaracao[animation_name]
			rich_text_label_declaracao_zoom.text = textos_animacoes_declaracao[animation_name]

			# Garante que está visível
			rich_text_label_declaracao.visible = true
			rich_text_label_declaracao_zoom.visible = true

			print("📄 Texto definido na Declaração:", textos_animacoes_declaracao[animation_name])
		else:
			printerr("❌ RichTextLabel não encontrado ou animação inválida")
	
	# Adicione para certidão e declaração conforme necessário
