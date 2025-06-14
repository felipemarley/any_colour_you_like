extends Node

static func get_documentos_data():
	return {
		"RG": {
			"textos": {
					"blue-01": "MARTINA PERUA
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
				"red-01": "MAXARI GODOFREDO
RG - 234.232-MR
ETNIA - VERMELHO ESCURO 
DATA NAS.: 22/02/2002
DATA EMISSÃO: 31/10/2020
VALIDADE: 31/10/2030
",
				"yellow-01": "AMAR ELO
RG - 678.345-MR
ETNIA - AMARELO 
DATA NAS.: 30/02/2004
DATA EMISSÃO: 31/12/2014
VALIDADE: 31/12/2024
"

			},
			
			"texturas": {}
		},
		"certidao": {
			"textos": {
				"blue-01": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: MARTINA PERUA
DATA: 17/05/2002
LOCAL: Clínica Genética de New Xenthia - Região verde-56
FILIAÇÃO:
- PORTADOR GENÉTICO 1: Kly'thon Perua (ETNIA AZUL)
- PORTADOR GENÉTICO 2: Qw'ena Vlor (ETNIA VERDE)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: CIANO
CÓDIGO BIOLÓGICO: MR-0092-XT",
				
				"blue-02": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: RICHARDESO POLES
DATA: 12/09/2000
LOCAL: Hospital da Zona de Pesca - Colônia Azul-3 
FILIAÇÃO:
- PORTADOR GENÉTICO 1: Vardemir Poles (ETNIA AZUL ESCURO)
- PORTADOR GENÉTICO 2: Myantia Klyth (ETNIA AZUL CLARO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: CHIFRUDO
ETNIA DECLARADA: AZUL
CÓDIGO BIOLÓGICO: MR-1124-TB",

				"blue-03": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: TYAZAI ZYTHAR
DATA: 30/11/1998
LOCAL: Clinica da Zona central - Colônia Azul-1 

FILIAÇÃO:
- PORTADOR GENÉTICO 1: Zy'than Zythar (ETNIA AZUL)
- PORTADOR GENÉTICO 2: Orlsa Zythar (VERMELHO CLARO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: AZUL CLARO
CÓDIGO BIOLÓGICO: MR-1234-DX",

				"green-01": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: FILTROPINO PINO
DATA: 05/05/2005
LOCAL: Hospital Sul da colonia - Colônia Verde-1 

FILIAÇÃO:
- PORTADOR GENÉTICO 1: Xerox Qirn (VERDE)
- PORTADOR GENÉTICO 2: In'dex Pino (VERDE CLARO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: VERDE
CÓDIGO BIOLÓGICO: MR-9865-DX",


				"purple-01": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: ROXIANO PLINIO
DATA: 10/05/2000
LOCAL: Hopital da zona Z - Nova Colonia Vermelha

FILIAÇÃO:
- PORTADOR GENÉTICO 1: Souza Plinio (AZUL)
- PORTADOR GENÉTICO 2: Digidigidigi e (VERMELHO ESCURO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: ROXO
CÓDIGO BIOLÓGICO: MR-3456-DX",



				"red-01": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: MAXARI GODOFREDO
DATA: 22/02/2002
LOCAL: Clinica Vila Xavo - Colonia Vermelha-999

FILIAÇÃO:
- PORTADOR GENÉTICO 1: Milai Godofredo (VERMELHO)
- PORTADOR GENÉTICO 2: Jota Questi (VERMELHO ESCURO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: Nenhuma
ETNIA DECLARADA: ROXO
CÓDIGO BIOLÓGICO: MR-2645-DX",


				"yellow-01": "CERTIFICADO DE NASCIMENTO MARCIANO
NOME: AMAR ELO
DATA: 30/02/2004
LOCAL: Clinica Floft - Colonia Azul-9

FILIAÇÃO:
- PORTADOR GENÉTICO 1: Lianona Elo (VERDE)
- PORTADOR GENÉTICO 2: Eliano Faro (VERMELHO)
MODIFICAÇÕES GENÉTICAS REGISTRADAS: CIRCUFERENCIA CRANIANA AVANTAJADA
ETNIA DECLARADA: AMARELO
CÓDIGO BIOLÓGICO: MR-3768-DX"
			},
			"texturas": {
				"blue-01": "res://assets/documents/certidao-nasc-002.png",
				"blue-02": "res://assets/documents/certidao-nasc-004.png",
				"blue-03": "res://assets/documents/certidao-nasc-004.png",
				"green-01": "res://assets/documents/certidao-nasc-002.png",
				"purple-01": "res://assets/documents/certidao-nasc-004.png",
				"red-01": "res://assets/documents/certidao-nasc-003.png",
				"yellow-01": "res://assets/documents/certidao-nasc-001.png"
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
'Meu código biológico comprova ancestralidade azul,
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
'Meu código biológico comprova ancestralidade azul total.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",


				"blue-03": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, TYAZAI ZYTHAR, declaro sob juramento genético que:

[X] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[X] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Meu código biológico comprova ancestralidade azul e vermelha em conjunto.
Por esse motivo desejo as duas cotas.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",

				"green-01": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, FILTROPINO PINO, declaro sob juramento genético que:

[X] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[ ] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Meu código biológico comprova ancestralidade azul no que se diz 3° grau,
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
'Meu código biológico comprova ancestralidade azul e vermelha, 
mas escolho a cota vermelha por ter nascido em uma região vermelha.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",


				"red-01": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, MAXARI GODOFREDO, declaro sob juramento genético que:

[ ] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[X] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Eu sou vermelho.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025",


				"yellow-01": "FORMULÁRIO DE AUTOCLASSIFICAÇÃO ÉTNICA
SOB PENA DE PERDA DE DIREITOS CIVIS POR FALSA DECLARAÇÃO

Eu, AMAR ELO, declaro sob juramento genético que:

[ ] OPTO pelo sistema de cotas para AZUIS (Art.7º)
[X] OPTO pelo sistema de cotas para VERMELHOS (Art.12º)

Justificativa: 
'Meu código biológico comprova ancestralidade vermelha, 
tenho parentesco de 1° grau com uma pessoa vermelha.'

ASSINATURA BIOMÉTRICA: (padrão de DNA verificado)
DATA MARCIANA: 15/01/2025"
			},
			"texturas": {}
		}
	}
