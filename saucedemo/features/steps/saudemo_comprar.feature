#language: pt
#utf-8

Funcionalidade: Efetuar uma compra

    Contexto:
    Dado que estou na tela de login
    Quando preencho login e senha corretos

@comprar
    Cenario: Efetuar uma compra
        E seleciono o produto 
        Então o sistema deve me permitir efetuar uma compra