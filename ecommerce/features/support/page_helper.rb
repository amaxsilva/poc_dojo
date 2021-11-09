Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects

    def login
    
        @login ||= LoginPage.new
        
    end

    def cadastro
    
        @cadastro ||= CadastroPage.new
        
    end

    def cadastro2
    
        @cadastro2 ||= CadastroPage2.new
        
    end

    def cadastro3
    
        @cadastro3 ||= CadastroPage3.new
        
    end

    def comprar

        @comprar ||= ComprarPage.new
        
    end
    
end