#language: pt
#utf-8

@efetuar_login
Funcionalidade: Acessar o site Saucedemo
    Eu como usuário
    Quero efetuar login 
    Para que possa efetuar uma compra

    Contexto:
    Dado que estou na tela de login

    @login
    Cenario: Efetuar login
        Quando digito "standard_user" e "secret_sauce"
        Entao entro no sistema

    @login_incorreto
    Cenario: Efetuar login incorreto
        Quando digito "locked_out_user" e "secret_sauce"
        Entao me apresenta a seguinte mensagem "Epic sadface: Sorry, this user has been locked out."
