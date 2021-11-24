Quando('seleciono o {string} , {string} e {string}') do |produto1, produto2, produto3|
    sleep 3
    comprar.selecionar_produto
    comprar.checkout_produto
end
  
Então('o sistema deve me permitir efetuar uma compra com Sucesso {string}') do |checkout_complete|
    comprar.finalizar
    sleep 2
    if checkout_complete.eql?("status")
        ordem = comprar.order
        expect(ordem).to eq ("THANK YOU FOR YOUR ORDER")
        else
        puts "Meu deus , algo deu errado"
    end

end
  