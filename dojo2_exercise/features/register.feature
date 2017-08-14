#language: pt
#utf-8

@First
Funcionalidade: Cadastrar Task
	Eu como usuario
	Quero cadastrar uma task nova
	Para ter visibilidade das tarefas que tenho q fazer

Cenario: Cadastrar Task
	Dado que acesse o site
	Quando logar no sistema
	E entar na tela de Create Task
  E preencher o formulario de criação
  E salvar o formulario
	Entao confirmar se o nome da task parece como titulo
