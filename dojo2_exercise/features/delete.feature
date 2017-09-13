#language: pt
#utf-8

@Delete
Funcionalidade: Deletar Task
	Eu como usuario
	Quero deletar uma task que ja existe
	Para poder limpar

Contexto:
	Dado que acesse o site
	E logue no sistema

Cenario: Deletar Task
	Dado que acesse a tela de Create Task
	Quando abrir a tela de visualização da task
  E clicar na caixa para marcar a task que foi criada
  E clicar no Bulk Action para deletar
  E confirmar o delete no box
  Entao não deve aparecer a mesma task
