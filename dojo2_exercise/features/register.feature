#language: pt
#utf-8

@Register
Funcionalidade: Cadastrar Task
	Eu como usuario
	Quero cadastrar uma task nova
	Para ter visibilidade das tarefas que tenho q fazer

Contexto: Login
	Dado que acesse o site
	E logue no sistema

Esquema do Cenario: Cadastrar Task
	Dado que eu entre na tela de Create Task
	Quando criar uma nova task chamada "<task_name>"
	Entao confirmar se o nome da "<task_name>" aparece como titulo

	Exemplos:
	|	task_name	|
	|	register_test		|
	|	register_Test2	|
	|	register_Test3	|
