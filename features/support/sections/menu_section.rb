require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

class MenuSection < SitePrism::Section
  element :home, ''
  element :sign_up, ''
  element :login, ''
end
