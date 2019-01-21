@login
Feature: Login window on main page

  @login_1 @basic_1
  Scenario: Login with basic credentials
    Given I open main page
    When I fill username
    When I fill password
    Then I logged to system
