#language: pt
#utf-8

@Edit
Funcionalidade: Editar Task
	Eu como usuario
	Quero editar uma task que ja existe
	Para atualizar as informações da task

Contexto:
	Dado que acesse o site
	E logue no sistema

Cenario: Editar Task
	Dado esteja na tela de Create Task
	Quando acessar a tela de visualização da task
  E clicar no botao de editar
  E editar o campo desejado
  E salvar a task
	Entao o campo solicitado tem que estar alterado
