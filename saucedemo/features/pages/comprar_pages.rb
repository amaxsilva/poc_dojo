class ComprarPage < SitePrism::Page

    element :produto, '#item_4_title_link'
    element :btn_add_cart, '#add-to-cart-sauce-labs-backpack'
    element :carrinho, '.shopping_cart_link'
    element :bag, :xpath, '//*[text()="Sauce Labs Backpack"]'
    element :checkout, :xpath, '//*[@id="checkout"]'
    element :first_name, '#first-name'
    element :last_name, '#last-name'
    element :zip, '#postal-code'
    element :continue, '#continue'
    element :btn_finish, '#finish'
    element :order, '#checkout_complete_container'    

    def selecionar_produto

        produto.click
        btn_add_cart.click
        carrinho.click
    
    end        

    def checkout_produto
       
        checkout.click
        first_name.set 'Tadeu'
        last_name.set 'Shimitze'
        zip.set '000000'
        continue.click

    end
        
    def finalizar

        #Finish       
        btn_finish.click
    
    end
        
     #valida valores
#   page.has_text?('Item total: $29.99')
#   expect(page.has_text?('Item total: $29.99')).to eq true
#   page.has_text?('Tax: $2.40')
#   expect(page.has_text?('Tax: $2.40')).to eq true
#   page.has_text?('Total: $32.39')
#   expect(page.has_text?('Total: $32.39')).to eq true
end