#language: pt
#utf-8

Funcionalidade: Acessar o site Saucedemo
    Eu como usuário
    Quero efetuar login 
    Para que possa efetuar uma compra

    Contexto:
    Dado que estou na tela de login

    @login
    Cenario: Efetuar login
        Quando preencho login e senha corretos
        Então devo ser redirecionado a tela home

    @login_incorreto
    Cenario: Efetuar login incorreto
        Quando preencho login e senha incorretos
        Então vejo a seguinte mensagem de error