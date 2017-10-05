#language: pt
#utf-8

@get
Funcionalidade: Buscar comentarios

@pica
Cenario: Ler todos os comentarios
	Dado que eu faça a requisição de de leitura de todos os comentario
  #Entao valido o codigo de resposta esperado

Esquema do Cenario: Ler um comentario existente
  Dado que eu faça requisição de leitura e um "<comentario>"
  Entao valido o codigo de resposta esperado

  Exemplos:
    | comentario  |
    | 1           |
    | 99          |
