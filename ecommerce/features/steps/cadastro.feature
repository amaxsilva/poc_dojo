#language: pt
#utf-8

@ecommerce
Funcionalidade: Cadastrar um usuário
    Como novo usuário
    Gostaria de cadastrar um novo usuário

    @cadastro
    Cenario: Efetuar cadastro  de usuário
        Dado que acesso o site do ecommerce
        Quando preencho todas as informações solicitadas
        Então devo conseguir me cadastrar