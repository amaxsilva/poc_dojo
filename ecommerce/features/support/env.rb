require 'rspec'
require 'page-object'
require 'data_magic'
require 'site_prism'
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require_relative 'page_helper.rb'

# World(PageObject::PageFactory)

# #Configurando o drive Capybara

# Capybara.register_driver :selenium do |app|
#     Capybara::Selenium::Driver.new(app, :browser => :chrome)
# end

# #Capybara.default_driver = :selenium
# #Capybara.default_max_wait_time = 15
# #Capybara.page.driver.browser.manage.window.maximize

# Capybara.configure do |config|
#     config.default_driver = :selenium
#     #config.default_driver = :selenium_chrome
#     config.app_host = 'http://automationpractice.com'
#     config.default_max_wait_time = 5
#     config.page.driver.browser.manage.window.maximize
#   end

Capybara.register_driver :selenium_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('start-maximized')
   
    Capybara::Selenium::Driver.new app, browser: :chrome, options: options
  end
  
  AMBIENTE = ENV['AMBIENTE']
  #Selenium::WebDriver::Chrome::Service.driver_path = '.\chromedriver.exe'
  
  CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
  World(PageObjects)

  Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 3
  end