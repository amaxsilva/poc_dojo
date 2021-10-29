#language: pt
#utf-8

@ecommerce
Funcionalidade: Efetuar uma compra no ecommerce
    Como usuário
    Gostaria e efetuar uma compra 

    @comprar
    Cenario: Efetuar uma compra
        Dado que acesso o site do ecommerce
        Quando preencho login e senha 
        E seleciono um produto e acesso o carrinho de compras 
        Então devo conseguir efetuar uma compra

        # Dado que efetuei login 
        # Quando seleciono um produto e acesso o carrinho de compras 
        # Então devo conseguir efetuar uma compra