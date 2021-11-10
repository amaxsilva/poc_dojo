#language: pt
#utf-8

Funcionalidade: Efetuar uma compra

@comprar
    Cenario: Efetuar uma compra
        Dado que estou na tela de login
        Quando digito "standard_user" e "secret_sauce" 
        Então o sistema deve me permitir efetuar uma compra