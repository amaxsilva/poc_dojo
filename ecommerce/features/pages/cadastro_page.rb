class CadastroPage < SitePrism::Page
    set_url 'index.php'
#Login de cadastro
    element :sign, '.login'
    element :email, '#email_create'
    element :btn_create, 'button[id="SubmitCreate"]'

    def logar

        sign.click

    end

    def cadastro_email

        email.set 'pijod@koldpak.com'
        #btn_create.click
        find(:id, 'SubmitCreate').click

    end
end

class CadastroPage2 < SitePrism::Page

#Suas Informações pessoais
    element :mr, '#id_gender1'
    element :first_name, '#customer_firstname'
    element :last_name, '#customer_lastname'
    element :value_email, '#email'
    element :pass, '#passwd'
    element :day, 'select[id="days"]'
    #element :months, 'select[id="months"]'
    #element :year, 'select[id="years"]'
    element :news, '#uniform-newsletter'
    element :receive, '#uniform-optin'

    def infor_pessoais

        mr.click
        first_name.set 'Amax Kerickson '
        last_name.set 'Alves da Silva'
        value_email.text
        pass.set'SitePrism123'
        #day.select '11'
        find(:xpath, '//*[@id="day"]/option[11]').select_option
        find(:xpath, '//*[@id="months"]/option[13]').select_option
        find(:xpath, '//*[@id="years"]/option[33]').select_option
        #months.select 'December'
        #year.select '2005'
        news.text
        receive.text

    end
end

class CadastroPage3 < SitePrism::Page
#Seu endereço
    element :first_address, '#firstname'
    element :last_address, '#lastname'
    element :company, '#company'
    element :address, '#address1'
    element :city, '#city'
    element :select_state, 'select[id="id_state"]'
    element :code, '#postcode'
    element :country, 'select[id="id_country"]'
    element :other, '#other'
    element :phone, '#phone'
    element :phone_mobile, '#phone_mobile'
    element :aalias, '#alias'
    element :btn_register, '//*[@id="submitAccount"]' 

    def cadastro_endereco

        first_address.set 'Clark'
        last_address.set 'Kent'
        company.set 'Stefanini'
        address.set 'Avenida José Napoles'
        city.set 'Manaus'
        #select_state.select '16'
        find(:xpath, '//*[@id="id_state"]/option[11]').select_option
        code.set '00000'
        #country.select 'United States'
        other.set 'apenas para complementar e validar a criação'
        phone.set '9299999999'
        phone_mobile.set '9291999999'
        aalias.set 'Supermercado Barato e Pronto'
        #btn_register.click
        find(:id, 'submitAccount').click
        sleep 5

    end

end


