Então('o sistema deve me permitir efetuar uma compra') do

  comprar.selecionar_produto
  page.has_text?('Sauce Labs Backpack')
  expect(page.has_text?('Sauce Labs Backpack')).to eq true 
  comprar.checkout_produto
  comprar.finalizar  
  #validar ordem de compra
  expect(comprar.order).to be_truthy

end