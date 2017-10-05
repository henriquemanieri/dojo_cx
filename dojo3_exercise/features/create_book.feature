#language: pt
#utf-8

@create
Funcionalidade: Criar livro


Cenario: Criar Livro
	Dado que eu faça a requisição de criação de um livro
	Entao valido o codigo de resposta da criação esperado
