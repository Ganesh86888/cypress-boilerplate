Feature: Signup

  Scenario Outline: First Name Error Validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    When I click on the sign up button
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      |        | Doe       | johndoe@domain.com  | Pass1234 | Pass1234          |This is a required field.|first name|

  Scenario Outline: Last Name Error Validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    When I click on the sign up button
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | email | password | confirm_password |error_message|error_name|
      |   John   | johndo@domain.com  | Pass1234 | Pass1234          |This is a required field.|last name|
  
  Scenario Outline: Email Error Validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    When I click on the sign up button
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      | John    | Doe       | johndo@domain.com  | Pass1234 | Pass1234          |This is a required field.|emailId|
  
  Scenario Outline: Valid Email Error Validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    When I click on the sign up button
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      | John    | Doe       | johndoe  | Pass1234 | Pass1234          |Please enter a valid email address (Ex: johndoe@domain.com).|emailId|
    
  Scenario Outline: Minimum password length validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    When I click on the sign up button
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      |  John      | Doe       | johndo@domain.com  | Pass12 | Pass12          |Minimum length of this field must be equal or greater than 8 symbols. Leading and trailing spaces will be ignored.|password|

  Scenario Outline: Minimum password characters validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    When I click on the sign up button
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      |  John      | Doe       | johndo@domain.com  | Passdsdd | Passdsdd          |Minimum of different classes of characters in password is 3. Classes of characters: Lower Case, Upper Case, Digits, Special Characters.|password|
  
  Scenario Outline: Medium password Meter validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      |  John      | Doe       | johndo@domain.com  | Pass1234 | Pass1234        |Medium|passwordMeter|


  Scenario Outline: Strong password Meter validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      |  John      | Doe       | johndo@domain.com  | Passdsdd1 | Passdsdd1         |Strong|passwordMeter|
    
  Scenario Outline: Very Strong password Meter validation
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      |  John      | Doe       | johndo@domain.com  | Passdsdd@123 | Passdsdd@123         |Very Strong|passwordMeter|
    
    Scenario Outline: Verify match of confirm password
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    When I click on the sign up button
    Then Verify "<error_name>" error message "<error_message>"


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      |  John      | Doe       | johndo@domain.com  | Passdsdd@123 | Passdsdd@12         |Please enter the same value again.|confirmPassword|

  Scenario Outline: Customer Registration
    Given I am on the home page
    When CLick Signup button
    Then I am on the Sign up page
    When I type in my first name "<first_name>"
    When I type in my last name "<last_name>"
    When I type in my emailId "<email>"
    When I type in my password "<password>"
    When I type in my password again "<confirm_password>"
    When I click on the sign up button


    Examples:
      | first_name | last_name | email | password | confirm_password |error_message|error_name|
      |  John      | Doe       | johndo@domain.com  | Passdsdd@123 | Passdsdd@123         |Please enter the same value again.|confirmPassword|