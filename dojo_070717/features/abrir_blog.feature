#language: pt
#utf-8

Funcionalidade: Abrir Site
	Eu como usuario
	Quero logar o dashboard
	Para criar um usuario

Cenario: Validar se estou no dashboard
	Dado que esteja na home do site
	Quando logar no dashboard
	Entao eu quero ver o texto dashboard
