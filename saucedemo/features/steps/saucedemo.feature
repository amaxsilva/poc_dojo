#language: pt
#utf-8

@efetuar_login
Funcionalidade: Acessar o site Saucedemo
    Eu como usuário
    Quero efetuar login 
    Para que possa efetuar uma compra

    Contexto:
        * que estou na tela de login

    Esquema do Cenário: Validar Login
        Quando digito o usuário "<login>" e a senha "<password>"
        Entao consigo validar o login com "<msg>"
    
    @login
    Exemplos:
    |     login     |  password  |  msg   |
    | standard_user |secret_sauce|  home  |
    |locked_out_user|secret_sauce|invalido|

    @login_incorreto
    Exemplos:
    |     login     |  password  |  msg   |
    |locked_out_user|secret_sauce|invalido|
