Quando('preencho login e senha') do
    #binding.pry
    login.sign_in

end
  
Então('devo conseguir efetuar login com sucesso') do
    expect(page).to have_link('', href: 'http://automationpractice.com/index.php?controller=my-account')
end