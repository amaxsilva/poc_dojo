Dado('que estou na tela de login') do
  home.load
  sleep 1
end

Quando('digito {string} e {string}') do |usuario, senha|
  home.key_login.set(usuario)
  home.key_password.set(senha)
  home.btn_login.click
end

Entao('entro no sistema') do
  #valida se a pagina esta correta
  expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url: true) 
end

Entao('me apresenta a seguinte mensagem {string}') do |mensagem|
  #valida se a mensagem exibida
  expect(home.msg_erro_login.text).to eq(mensagem)
end
