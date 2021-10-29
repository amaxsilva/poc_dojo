Quando('seleciono um produto e acesso o carrinho de compras') do
    comprar.select_produto
    sleep 2
    comprar.checkout
end
  
Então('devo conseguir efetuar uma compra') do
    comprar.successfully
end

# Dado('que efetuei login') do
#     cadastro.load
#     cadastro.logar
# end
  
# Quando('seleciono um produto e acesso o carrinho de compras') do
#     comprar.order
# end
  
# Então('devo conseguir efetuar uma compra') do
#     comprar.successfully
# end