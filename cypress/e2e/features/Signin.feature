Feature: SignIn

  Scenario Outline: Registered Customer SignIn
    Given I am on the home page
    When CLick Signin button
    Then I am on the Sign in page
    When I type in my email box "<email>"
    When I type in my password box "<password>"
    When I click on the sign in button
    Then Verify customer details


    Examples:
      |email|password|
      |appName@domain.com|Pass1234|