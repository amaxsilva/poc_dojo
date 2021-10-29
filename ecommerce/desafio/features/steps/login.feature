#language: pt
#utf-8

@ecommerce
Funcionalidade: Efetuar login
    Como usuário
    Gostaria e efetuar login

    @login
    Cenario: Validar login com sucesso
        Dado que acesso o site do ecommerce
        Quando preencho login e senha 
        Então devo conseguir efetuar login com sucesso