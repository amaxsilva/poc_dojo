Dado('que estou na tela de login') do
  home.load
  sleep 1
end

Quando('digito o usuário {string} e a senha {string}') do |login, password|
  home.key_login.set(login)
  home.key_password.set(password)
  home.btn_login.click
  #valida se a pagina esta correta
   #expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url: true) 
end

Entao('consigo validar o login com {string}') do |msg|
  if msg.eql?("home")
        texto = home.login_sucesso.text
        expect(texto).to eql('PRODUCTS')
        sleep 2
      else
        texto = LoginPage.new.login_invalido.text
        expect(texto).to eql('Epic sadface: Sorry, this user has been locked out.')
        sleep 2
      end
end