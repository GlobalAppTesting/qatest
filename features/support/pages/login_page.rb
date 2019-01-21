require 'site_prism'

class LoginPage < SitePrism::Page
  set_url 'https://testers.testerwork.com/tester-account/sign-in'

  element :email_input, :xpath, '//input[@type="email"]'
  element :password_input, :xpath, '//input[@type="password"]'
  element :log_in_button, :xpath, '//span[@class="ladda-label"]'
  element :forgotten_password_link, :xpath, ''
  element :error_message, :xpath, '//div[@class="text-danger"]'
  element :stay_logged_checkbox, :xpath, ''
  element :sign_up_link, :xpath, ''
  end
