@change
Feature: Change hardware feature

  @change_0 @basic
  Scenario: Open home Page
    Given I go to Login Page
    When I login to with correct credentials
    When I open Your Devices from drop down menu
    When I add Windows 10 to operating system
    When I remove Windows 10 from operating system
