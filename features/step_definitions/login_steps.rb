require_relative '../support/pages/login_page'

Given /^I go to Login Page$/ do
  login_page = LoginPage.new
  login_page.load
end

When /^I login to with incorrect credentials$/ do
  login = LoginPage.new
  login.email_input.set 'marek.majerski@gmail.com'
  login.password_input.set 'password#3'
  login.log_in_button.click
end

Then /^I see error message (.+)$/ do |error_message|
  login = LoginPage.new
  puts login.error_message.text
  expect(login.error_message.text).to eq error_message
end
