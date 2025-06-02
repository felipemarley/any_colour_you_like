extends Node

static func get_documentos_data():
	return {
		"RG": {
			"textos": {
					"blue-01": "MARTIANA PERUA
								RG - 746.900-MR
								ETNIA - CIANO
								DATA NAS.: 17/05/2002
								DATA DE EMISSÃO: 30/08/2024
								VALIDADE: 30/08/2034",
								
				"blue-02": "RICHARDESO POLES
RG - 583.234-MR
ETNIA - AZUL 
DATA NAS.: 12/09/2000
DATA EMISSÃO: 03/03/2020
VALIDADE: 03/03/2030",

				"blue-03": "TYAZAI ZYTHAR
RG - 333.643-MR
ETNIA - AZUL CLARO
DATA NAS.: 30/11/1998
DATA EMISSÃO: 22/01/2018
VALIDADE: 22/01/2028
",
				"green-01": "FILTROPINO PINO
RG - 171.345-GR
ETNIA - VERDE 
DATA NAS.: 05/05/2005
DATA EMISSÃO: 24/01/2015
VALIDADE: 24/01/2025
",

				"purple-01": "ROXIANO PLINIO
RG - 928.132-MR
ETNIA - ROXO 
DATA NAS.: 10/05/2000
DATA EMISSÃO: 30/09/2018
VALIDADE: 30/09/2028
",
				"red-01": "RG 06 - Vermelho",
				"yellow-01": "RG 07 - Amarelo"
			},
			"texturas": {}
		},
		"certidao": {
			"textos": {
				"blue-01": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: MARTIANA PERUA
DATA: 17/05/2002
LOCAL: Clínica Genética de New Xenthia - Região verde-56
FILIAÇÃO:
- PORTADOR GENÉTICO 1: Kly'thon Perua (ETNIA AZUL)
- PORTADOR GENÉTICO 2: Qw'ena Vlor (ETNIA VERDE)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: CIANO
CÓDIGO BIOLÓMICO: MR-0092-XT",
				
				"blue-02": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: RICHARDESO POLES
DATA: 12/09/2000
LOCAL: Zona de Pesca - Colônia Azul-3 
FILIAÇÃO:
- PORTADOR GENÉTICO 1: Vardemir Poles (ETNIA AZUL ESCURO)
- PORTADOR GENÉTICO 2: Myantia Klyth (ETNIA AZUL CLARO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: CHIFRUDO
ETNIA DECLARADA: AZUL
CÓDIGO BIOLÓMICO: MR-1124-TB",

				"blue-03": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: TYAZAI ZYTHAR
DATA: 30/11/1998
LOCAL: Zona central - Colônia Azul-1 

FILIAÇÃO:
- PORTADOR GENÉTICO 1: Zy'than Zythar (ETNIA AZUL)
- PORTADOR GENÉTICO 2: Orlsa Zythar (VERMELHO CLARO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: AZUL CLARO
CÓDIGO BIOLÔMICO: MR-0001-DX",

				"green-01": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: FILTROPINO PINO
DATA: 05/05/2005
LOCAL: Sul da colonia - Colônia Verde-1 

FILIAÇÃO:
- PORTADOR GENÉTICO 1: Xerox Qirn (VERDE)
- PORTADOR GENÉTICO 2: In'dex Pino (VERDE CLARO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: VERDE
CÓDIGO BIOLÔMICO: MR-0001-DX",


				"purple-01": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: ROXIANO PLINIO
DATA: 10/05/2000
LOCAL: Zoneamento da zona Z - Nova Colonia Vermelha

FILIAÇÃO:
- PORTADOR GENÉTICO 1: Souza Plinio (AZUL)
- PORTADOR GENÉTICO 2: Digidigidigi e (VERMELHO ESCURO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: ROXO
CÓDIGO BIOLÔMICO: MR-0001-DX",

				"red-01": "Certidão 06 - Vermelho",
				"yellow-01": "Certidão 07 - Amarelo"
			},
			"texturas": {
				"blue-01": "res://assets/documents/certidao-nasc-002.png",
				"blue-02": "res://assets/documents/certidao-nasc-004.png",
				"blue-03": "res://assets/documents/certidao-nasc-004.png",
				"green-01": "res://assets/documents/certidao-nasc-002.png",
				"purple-01": "res://assets/documents/certidao-nasc-004.png",
				
				"red-01": "res://assets/documents/certidao-nasc-002.png",
				"yellow-01": "res://assets/documents/certidao-nasc-003.png"
			}
		},
		"declaracao": {
			"textos": {
				"blue-01": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, MARTIANA PERUA, declaro sob juramento genético que:

[X] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[ ] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Meu código biolômico comprova ancestralidade azul,
apesar da contribuição genética verde da portadora Qw'ena Vlor.
Meu fenótipo é azul, como atesta meu selo epidermal.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",


				"blue-02": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, RICHARDESO POLES, declaro sob juramento genético que:

[X] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[ ] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Meu código biolômico comprova ancestralidade azul total.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",


				"blue-03": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, TYAZAI ZYTHAR, declaro sob juramento genético que:

[X] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[X] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Meu código biolômico comprova ancestralidade azul e vermelha em conjunto.
Por esse motivo desejo as duas cotas.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",

				"green-01": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, FILTROPINO PINO, declaro sob juramento genético que:

[X] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[ ] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Meu código biolômico comprova ancestralidade azul no que se diz 3° grau,
meu bisavó por parte de mão era azul claro, e isso fica evidente pelo meu
nariz.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",


				"purple-01": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, ROXIANO PLINIO, declaro sob juramento genético que:

[ ] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[X] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Meu código biolômico comprova ancestralidade azul e vermelha, 
mas escolho a cota vermelha por ter nascido em uma região vermelha.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",

				"red-01": "Declaração 06 - Vermelho",
				"yellow-01": "Declaração 07 - Amarelo"
			},
			"texturas": {}
		}
	}
