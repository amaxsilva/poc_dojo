require 'rspec'
require 'page-object'
require 'data_magic'
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'
require 'allure-cucumber'

#Torna as modulos globais
World(Helper)
World(PageObjects)
#Configura o allure para ocorrer erros
Cucumber::Core::Test::Step.module_eval do
   def name
     return text if text == 'Before hook'
     return text if text == 'After hook'
     "#{source.last.keyword}#{text}"
   end
end
#Configura a execução do selenium com chrome e maxima a tela
Capybara.register_driver :selenium_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('start-maximized')
   
    Capybara::Selenium::Driver.new app, browser: :chrome, options: options
  end
#Configura a variavel ambiente 
  AMBIENTE = ENV['AMBIENTE']
  #Selenium::WebDriver::Chrome::Service.driver_path = '.\chromedriver.exe'
  CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
#Capybara Confirure repassa as informações de configuração do selenium, passamos a url e tempo maximo de espera  
  Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 3
  end

FileUtils.rm_rf('reports')
FileUtils.rm_rf('allure_report')
FileUtils.mkdir_p('reports')
FileUtils.mkdir_p('allure_report')






