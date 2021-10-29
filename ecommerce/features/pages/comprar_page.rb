class ComprarPage < SitePrism::Page
 
    element :women, :xpath, '//a[text()="Women"]'
    element :cart, :xpath, '//*[text()="Add to cart"]'
    element :proceed_checkout, :xpath, '//*[@id="form"]/p/button/span/i'
    element :blouse, :xpath, '//*[@id="center_column"]/ul/li[2]'
    element :p_checkout, :xpath, '//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a'    
    element :term_of_service, :xpath, '//*[@id="form"]/div/p[2]/label'    
    element :pay, '.bankwire'    
    element :btn_confirm, :xpath, '//*[text()="I confirm my order"]'
    element :proceed, :xpath, '//*[text()="Proceed to checkout"]'
    

    def select_produto

        women.click
        blouse.click
        
        
    end

    def checkout
        cart.click
        #find(:xpath, '//*[text()="Add to cart"]').click
        assert_text('Product successfully added to your shopping cart')
        p_checkout.click
        assert_text('SHOPPING-CART SUMMARY')
        proceed.click
        assert_text('ADDRESSES')
        proceed.click
        #click_link('Proceed to checkout')
        assert_text('I agree to the terms of service and will adhere to them unconditionally.')
        term_of_service.click
        proceed_checkout.click
        assert_text('PLEASE CHOOSE YOUR PAYMENT METHOD')
        pay.click        
        
    end

    def successfully

        assert_text('You have chosen to pay by bank wire. Here is a short summary of your order:')
        btn_confirm.click
     
    end
end