#language: pt
#utf-8

Funcionalidade: Criar usuario
	Eu como admin
	Quero criar usuario
	Para ter um usuario novo



Cenario: Criar um novo usuario
	Dado que esteja no PIM
	Quando criar usuario 
	Entao quero ver o texto Personal Details