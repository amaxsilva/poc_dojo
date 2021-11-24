#language: pt
#utf-8

Funcionalidade: Efetuar uma compra
    Como usuário cadastrado no site 
    Quero poder efetuar um compra com sucesso

 Contexto:
        Dado que estou na tela de login

    @comprar
    Esquema do Cenário: Efetuar compras 
        Quando digito o usuário "standard_user" e a senha "secret_sauce"
        E seleciono o "<produto1>" , "<produto2>" e "<produto3>"
        Então o sistema deve me permitir efetuar uma compra com Sucesso "<status>"

    Exemplos:
    |            produto1             |             produto2            |       produto3                 |      status      |
    |    Sauce Labs Fleece Jacket     |     Sauce Labs Bolt T-Shirt     |       Sauce Labs Bike Light    |      Sucesso     |

    # Exemplos:
    # |             produto1             |             produto2            |       produto3                 |      status      |
    # |    Sauce Labs Fleece Jacket      |     Sauce Labs Bolt T-Shirt     |       Sauce Labs Bike Light    |      Sucesso     |