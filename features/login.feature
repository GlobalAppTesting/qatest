# @login
# Feature: Login window on main page
#
#   @login_0 @basic
#   Scenario: Open home Page
#     Given I navigate to the home page
#     Then the home page should contain the login button
#
#   @login_1 @basic
#   Scenario: Open home Page
#     Given I navigate to the home page
#     When I click LOGIN button
#     Then I land on Login Page
#
#   @login_2
#   Scenario: Login page has all expected elements
#     Given I go to Login Page
#     Then I see all expected elements
#
#   @login_3 @basic
#   Scenario: Login with incorrect credentials
#     Given I go to Login Page
#     When I login to with incorrect credentials
#     Then I see error message This account doesn’t exist, try a different email/password or use ‘forgotten password’
#
#   @login_4 @basic
#   Scenario: Login with correct credentials
#     Given I go to Login Page
#     When I login to with correct credentials
#     Then I land on Registration Page
