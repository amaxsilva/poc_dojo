class ComprarPage < SitePrism::Page
 
    #element :click_blouse, '//a[title()="Blouse"]'
    element :process_checkout, 'button(type="submit")'
    element :checkout, '//span[text()="Proceed to checkout"]'    
    element :term_of_service, '//*[@id="form"]/div/p[2]/label'    
    element :pay, '.bankwire'    
    element :btn_confirm, '//*[text()="I confirm my order"]'
    

    def select_produto

        sleep 1
        find(:xpath, '//a[text()="Women"]').click
        sleep 1
        click_link('color_7')
        
    end

    def checkout
        
        find(:xpath, '//*[text()="Add to cart"]').click
        sleep 2
        assert_text('Product successfully added to your shopping cart')
        click_link('Proceed to checkout')
        sleep 1
        # @adress_checkout = find(:xpath, '//*[text()="Shopping-cart summary"]')
        # expect(@adress_checkout).to eql? "Shopping-cart summary" 
        click_link('Proceed to checkout')
        sleep 1
        find(:xpath, '//*[text()="Proceed to checkout"]').click
        #não esta enccontrando o elemento, por isso foi usado o find acima
        #click_link('Proceed to checkout')
        #term_of_service.click
        find(:xpath, '//*[@id="form"]/div/p[2]/label').click
        sleep 1
        find(:xpath, '//*[@id="form"]/p/button/span/i').click
        pay.click
        sleep 2
        
        
    end

    def successfully

        assert_text('You have chosen to pay by bank wire. Here is a short summary of your order:')
        #btn_confirm.click
         find(:xpath, '//*[text()="I confirm my order"]').click       
    end
end