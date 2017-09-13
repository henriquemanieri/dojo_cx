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
Quando preencher o formulario de criação da task
E salvar-lo
E abrir tela de visualização da task
E pesquisar task para editar
E clicar no botao para editar
E editar os campos desejados
E salvar a task editada
E abrir a tela com todas as tasks
E pesquisar a task que foi editada
E clicar na checkbox para marcar a task editada
E deletar a task
E confirmar o delete
Entao não deve aparecer a task
