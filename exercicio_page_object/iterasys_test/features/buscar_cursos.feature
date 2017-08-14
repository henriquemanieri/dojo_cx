#language: pt
#utf-8

@First
Funcionalidade: Buscar curso
	Eu como usuario
	Quero um fazer o curso de Formacao em teste de software
	E que seja mais barato que 2250
	E que seja com o professor Jose Correia
	Para validar o curso

Cenario: Buscar curso na Iterasys
	Dado que acesse o site
	Quando encontrar curso de Formacao de teste de software
	E encontrar curso mais barato que 2250
	Entao validar se o professor e o Jose Correia
