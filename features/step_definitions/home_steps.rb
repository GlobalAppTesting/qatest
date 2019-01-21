require_relative '../support/pages/home_page'

Given(/^I navigate to the home page$/) do
  home = HomePage.new
  home.load
end

Then(/^the home page should contain the login button$/) do
  home = HomePage.new
  expect(home.has_login_button?).to eq true
end
