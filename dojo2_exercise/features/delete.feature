#language: pt
#utf-8

@Delete
Funcionalidade: Deletar Task
	Eu como usuario
	Quero deletar uma task que ja existe
	Para poder limpar

Contexto: Login
	Dado que acesse o site
	E logue no sistema
	E que acesse a tela de Create Task
	E abrir a tela de visualização da task

Cenario: Deletar Task
	Dado que apareça todas as tasks em lista
  Quando deletar a primeira task da lista
  Entao não deve aparecer a mesma task
