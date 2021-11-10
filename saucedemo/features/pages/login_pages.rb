class LoginPage < SitePrism::Page
  set_url '/'
  element :key_login, '#user-name'
  element :key_password, '#password'
  element :btn_login, '#login-button'
  element :msg_erro_login, :xpath, '//*[@id="login_button_container"]/div/form/div[3]/h3'  
end