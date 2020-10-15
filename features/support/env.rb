require 'capybara/cucumber'
require 'rubygems'
require 'selenium-webdriver'
require 'capybara'
require 'webdrivers'
require 'byebug'
require 'site_prism'


browser_name = ENV['BROWSER'] || "chrome"

puts '--- Test Environment Variables ---'
puts 'Browser            ' + browser_name
puts '---'

# Configure Capybara with defaults
Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'http://www.westpac.co.nz'
  config.default_max_wait_time = 10
end

# Register Firefox
Capybara.register_driver :selenium do |app|
  options = {
      :js_errors => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

# Register Chrome
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# Choose a driver to use
case browser_name.upcase
  when 'CHROME'
    Capybara.default_driver = :selenium_chrome
  when 'FF', 'FIREFOX'
     Capybara.default_driver = :selenium
  else
    raise("Browser '#{browser_name}' is not supported. Use Firefox, Chrome or Headless")
end