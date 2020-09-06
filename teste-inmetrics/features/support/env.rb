require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "internet_explorer"
  @driver = :selenium_internet_explorer
else
  puts "Invalid Browser"
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = CONFIG['url']
  config.default_max_wait_time = 10
end
