@login
Feature: Login window on main page

  @login_0
  Scenario: Open home Page
    Given I navigate to the home page
    Then the home page should contain the login button

  @login_1 @basic_1
  Scenario: Login with basic credentials
    Given I go to Login Page
    When I login to with incorrect credentials
    Then I see error message "This account doesn’t exist, try a different email/password or use ‘forgotten password’"
