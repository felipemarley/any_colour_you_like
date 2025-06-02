extends Control

func _ready() -> void:
	$ColorRect/RichTextLabel.bbcode_enabled = true
	$ColorRect/RichTextLabel.text = (
		"GABARITO OFICIAL - BANCA DE HETEROIDENTIFICAÇÃO\n\n (SUJEITO A ALTERAÇÃO E JULGAMENTOS ERRADOS)\n\n" +

		"1. [color=cyan]MARTINA PERUA[/color]\n" +
		"   - Status: [color=red]REPROVADA[/color]\n" +
		"   - Motivo: É ciano e não tem características físicas de azuis\n\n" +

		"2. [color=#4169E1]RICHARDESO POLES[/color]\n" +
		"   - Status: [color=green]APROVADO[/color]\n\n" +

		"3. [color=cyan]TYAZAI ZYTHAR[/color]\n" +
		"   - Status: [color=red]REPROVADO[/color]\n" +
		"   - Motivo: Pedido de duas cotas simultâneas\n\n" +

		"4. [color=#66CC66]FILTROPINO PINO[/color]\n" +
		"   - Status: [color=red]REPROVADO[/color]\n" +
		"   - Motivo: Etnia verde (ex-colonizador) e RG com dados incorretos\n\n" +

		"5. [color=#800080]ROXIANO PLINIO[/color]\n" +
		"   - Status: [color=red]REPROVADO[/color]\n" +
		"   - Motivo: Certificado com selo incorreto para zona de nascimento\n\n" +

		"6. [color=#A52A2A]MAXARI GODOFREDO[/color]\n" +
		"   - Status: [color=green]APROVADO[/color]\n\n" +

		"7. [color=yellow]AMAR ELO[/color]\n" +
		"   - Status: [color=red]REPROVADO[/color]\n" +
		"   - Motivo: Não possui características físicas de vermelhos e RG vencido\n"
	)
