Dado('que acesso o site do ecommerce') do
    cadastro.load
    cadastro.logar
    
end
  
Quando('preencho todas as informações solicitadas') do
    cadastro.cadastro_email
    #cadastro2.wait_for_mr
    cadastro2.infor_pessoais
    cadastro3.cadastro_endereco
end
  
Então('devo conseguir me cadastrar') do
    expect(page).to have_link('', href: 'http://automationpractice.com/index.php?controller=my-account')
end
  