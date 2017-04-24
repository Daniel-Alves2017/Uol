#language: pt
#uft-8

Funcionalidade:Validar o valor do dollar
Confirmar se esta no site especifico
e validar se dollar esta abaixo de 3,20

Cenario:Validar valor do dollar
Dado que esteja no site especifico
Quando buscar um site especifico
E confirmar se esta no site e clicar no link economia
Então validar o valor do dollar está abaixo 3,20
