Quando('seleciono o produto') do
  should have_xpath('//*[@id="inventory_container"]/div/div[1]/div[2]') #valida existencia do item na pagina
  find(:id,'add-to-cart-sauce-labs-backpack').click #adiciona item ao carrinho
  find('a.shopping_cart_link').click #clica no carrinho
end

Então('o sistema deve me permitir efetuar uma compra') do
 sauce = find('div.inventory_item_name')
 expect(sauce).to be_truthy   
 click_button('checkout')
 #checkout 
 find(:id,'first-name').send_keys("Amax")
 find(:id,'last-name').send_keys("Kerickson")
 find(:id,'postal-code').send_keys("69018151")
 click_button('continue')
 click_button('finish')
 order = find(:xpath, '//*[@id="checkout_complete_container"]')
 expect(order).to be_truthy
end