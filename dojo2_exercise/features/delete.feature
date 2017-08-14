#language: pt
#utf-8

Funcionalidade: Deletar Task
	Eu como usuario
	Quero deletar uma task que ja existe
	Para poder limpar

Cenario: Cadastrar Task
	Dado eu tenha uma tarefa criada
	Quando entar na tela de "Create Task"
  E acessar o a tela de visualização da task
  E clicar na caixa para marcar a task que foi criada
  E clicar no "Bulk Action" para deletar
  E confirmar o delete no box
  Entao verificar se a  task continua listada
