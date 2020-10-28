require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/rspec'
require 'capybara/dsl'
require 'rails'
include RSpec::Matchers


include Capybara::DSL

CONTEXTO = ENV['CONTEXTO']
BROWSER = ENV['BROWSER']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/contextos/#{CONTEXTO}.yml")

Capybara.register_driver :selenium do |app|
  #Para rodar o modo headless é só mudar para true
  modo_headless = false

  if BROWSER.eql?('chrome')
    chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"instaladores","chromedriver.exe")
    Selenium::WebDriver::Chrome::Service.driver_path  = chromedriver_path
    options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized'])
      if modo_headless
        options.args << '--headless'
      end
      Capybara::Selenium::Driver.new(app, :browser => :chrome, options: options)
      elsif BROWSER.eql?('firefox')
      Selenium::WebDriver::Firefox::Service.driver_path  = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"instaladores","geckodriver.exe")
      options = ::Selenium::WebDriver::Firefox::Options.new
      if modo_headless
        options.args << '--headless'
        end
      Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true, options: options)         
    end
  end
  
Capybara.javascript_driver = :firefox_headless

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 180

Capybara.app_host = CONFIG['url_padrao']
