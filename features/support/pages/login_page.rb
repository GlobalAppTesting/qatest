require 'site_prism'

class LoginPage < SitePrism::Page
  set_url 'https://testers.testerwork.com/tester-account/sign-in'

  element :email_input, :xpath, '//input[@type="email"]'
  element :password_input, :xpath, '//input[@type="password"]'
  element :log_in_button, :xpath, '//span[@class="ladda-label"]'
  element :stay_logged_checkbox, :xpath, '//input[@type="checkbox"]'
  element :sign_up_link, :xpath, '//a[text()="Sign up to Tester Work"]'
  element :forgotten_password_link, :xpath, '//a[text()="Forgotten password?"]'
  element :error_message, :xpath, '//div[@class="text-danger"]'

  expected_elements :email_input, :password_input, :log_in_button,
    :forgotten_password_link, :stay_logged_checkbox, :sign_up_link
end
