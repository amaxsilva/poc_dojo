class LoginPage < SitePrism::Page
  set_url '/'
  element :key_login, '#user-name'
  element :key_password, '#password'
  element :btn_login, '#login-button'
  element :login_sucesso, :xpath, '//*[@id="header_container"]/div[2]/span'
  element :login_invalido, :xpath, '//*[@id="login_button_container"]/div/form/div[3]/h3'
end