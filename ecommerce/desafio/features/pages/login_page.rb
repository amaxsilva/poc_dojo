class LoginPage < SitePrism::Page

    element :sign_email, '#email'
    element :sign_pass, '#passwd'
    #element :sign_in, '#button[type="SubmitLogin"]'
    

    def sign_in

        sign_email.set 'zaila5504@uorak.com'
        sign_pass.set 'SitePrism123'
        #sign_in.click 
        find(:id, 'SubmitLogin').click
    end
end

