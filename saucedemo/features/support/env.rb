require 'rspec'
require 'page-object'
require 'data_magic'
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

World(PageObjects)

#Configurando o drive Capybara
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






