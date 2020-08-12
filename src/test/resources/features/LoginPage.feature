@loginPage

Feature: Login Feature

  Background:
    Given I am on home page

  @login
  Scenario Outline: Verify invalid login for multiple users
    When I enter <username> into username text field on home screen
    And I enter <password> into password text field on home screen
    And I click on login button on home screen
    Then I verify that invalid credentials

    Examples:
        | username            | password    |
        | fatihgene@gmail.com | test12345   |
        | fg@gmail.com        | test123456  |
        | gene@gmail.com      | test1234556 |