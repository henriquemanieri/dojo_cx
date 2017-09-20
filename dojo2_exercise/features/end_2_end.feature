#language: pt
#utf-8

@End2end
Funcionalidade: Fluxo end-2-end
	Eu como usuario
	Quero criar uma task
	E edita-la
	E deleta-la
	Para testar todas as funções do sistema

Contexto:
	Dado que acesse o site
	E logue no sistema

Cenario: Fluxo end-2-end
Dado que eu entre na tela de criação de tasks
Quando criar uma nova task
E editar a task
E deletar a task
Entao não deve aparecer a task
