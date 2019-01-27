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

When /^I login to with correct credentials$/ do
  login = LoginPage.new
  login.email_input.set 'marek.majerski@gmail.com'
  login.password_input.set 'Apple123'
  login.log_in_button.click
end

Then(/^I land on Test Cycles Page$/) do
  test_cycles = TestCyclesPage.new
  expect(test_cycles).to be_displayed
end

Then /^I see all expected elements$/ do
  login = LoginPage.new
  expect(login.all_there?).to eq true
end

Then /^I see error message (.+)$/ do |error_message|
  login = LoginPage.new
  expect(login.error_message.text).to eq error_message
end
