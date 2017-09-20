#language: pt
#utf-8

@Edit
Funcionalidade: Editar Task
	Eu como usuario
	Quero editar uma task que ja existe
	Para atualizar as informações da task

Contexto: Login
	Dado que acesse o site
	E logue no sistema
	E que acesse a tela de Create Task
	E abrir a tela de visualização da task

Cenario: Editar Task
	Dado que vizualize todas as tasks
	Quando editar a primeira task da lista
	Entao o campo solicitado tem que estar alterado
