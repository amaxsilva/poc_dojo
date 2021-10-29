require 'rspec'
require 'page-object'
require 'data_magic'
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

#World(PageObject::PageFactory)

#Configurando o drive Capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15
Capybara.page.driver.browser.manage.window.maximize







