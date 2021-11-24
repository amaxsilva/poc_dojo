class ComprarPage < SitePrism::Page

    element :produto_bike_light, '#add-to-cart-sauce-labs-bike-light'
    element :produto_bolt_t, '#add-to-cart-sauce-labs-bolt-t-shirt'
    element :produto_fleece_jacket, '#add-to-cart-sauce-labs-fleece-jacket'
    element :carrinho, '.shopping_cart_link'
    element :checkout, :xpath, '//*[@id="checkout"]'
    element :first_name, '#first-name'
    element :last_name, '#last-name'
    element :zip, '#postal-code'
    element :continue, '#continue'
    element :btn_finish, '#finish'
    element :order, '.complete-header' 

    
    def selecionar_produto

        produto_bike_light.click
        produto_bolt_t.click
        produto_fleece_jacket.click
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
        
end