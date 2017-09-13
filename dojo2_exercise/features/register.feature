#language: pt
#utf-8

@Register
Funcionalidade: Cadastrar Task
	Eu como usuario
	Quero cadastrar uma task nova
	Para ter visibilidade das tarefas que tenho q fazer

Contexto:
	Dado que acesse o site
	E logue no sistema

Cenario: Cadastrar Task
	Dado que eu entre na tela de Create Task
	Quando preencher o formulario de criação
  E salvar o formulario
	Entao confirmar se o nome da task aparece como titulo
