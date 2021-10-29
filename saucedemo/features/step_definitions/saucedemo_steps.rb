Dado('que estou na tela de login') do
  visit "https://www.saucedemo.com/"
end

Quando('preencho login e senha corretos') do
  find(:xpath, '//*[@id="user-name"]').send_keys("standard_user")
  find(:xpath, '//*[@id="password"]').send_keys("secret_sauce")
  click_button('login-button')
end

Então('devo ser redirecionado a tela home') do
  expect(page).to have_current_path('https://www.saucedemo.com/inventory.html', url: true) #valida se a pagina esta correta
end

Quando('preencho login e senha incorretos') do                                
  find(:xpath, '//*[@id="user-name"]').send_keys("locked_out_user")
  find(:xpath, '//*[@id="password"]').send_keys("secret_sauce")
  click_button('login-button')
end                                                                           
                                                                              
Então('vejo a seguinte mensagem de error') do                                 
 assert_text('Epic sadface: Sorry, this user has been locked out.')
  sleep 3
end                                                                           
                                                                              