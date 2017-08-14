#language: pt
#utf-8

Funcionalidade: Editar Task
	Eu como usuario
	Quero editar uma task que ja existe
	Para atualizar as informações da task

Cenario: Cadastrar Task
	Dado eu tenha uma tarefa criada
	Quando entar na tela de "Create Task"
  E acessar o a tela de visualização da task
  E clicar no botao de editar
  E editar o campo desejado
  E salvar a task
	Entao o campo solicitado tem que estar alterado
