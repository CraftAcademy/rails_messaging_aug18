Feature: Create user account
    As a visitor
    In order to sign up for the service
    I can create a user account

    Background: 
        Given the following registered user exists
            | name            |email            | password           |
            | Happy           |happy@gmail.com  | password           |
        And I visit the landing page

    Scenario: Sign up successfully accomplished
        When I click on "Sign up" link
        Then I fill in "Name" with "Daniel"
        And I fill in "Email" with "dan@gmail.com"
        And I fill in "Password" with "ThisIsMyPassword"
        And I fill in "Password confirmation" with "ThisIsMyPassword"
        And I click on "Create" link
        Then I should see a message that states "Welcome! You have signed up successfully."
    
    Scenario: Sign up unsuccessfull - password too short
        When I click on "Sign up" link
        Then I fill in "Name" with "Daniel"
        And I fill in "Email" with "dan@gmail.com"
        And I fill in "Password" with "This"
        And I fill in "Password confirmation" with "This"
        And I click on "Create" link
        Then I should see a message that states "Password is too short"
        
    Scenario: Sign up unsuccessfull - email has been taken
        When I click on "Sign up" link
        Then I fill in "Name" with "Daniel"
        And I fill in "Email" with "happy@gmail.com"
        And I fill in "Password" with "ThisIsMyPassword"
        And I fill in "Password confirmation" with "ThisIsMyPassword"
        And I click on "Create" link
        Then I should see a message that states "Email has already been taken"

    Scenario: Sign up unsuccessfull - password unconfirmed
        When I click on "Sign up" link
        Then I fill in "Name" with "Daniel"
        And I fill in "Email" with "dan@gmail.com"
        And I fill in "Password" with "ThisIsMyPassword"
        And I fill in "Password confirmation" with "ThisIsMyPasswor"
        And I click on "Create" link
        Then I should see a message that states "Password confirmation doesn't match Password"

    Scenario: Sign up unsuccessfull - name has been taken
        When I click on "Sign up" link
        Then I fill in "Name" with "Happy"
        And I fill in "Email" with "dan@gmail.com"
        And I fill in "Password" with "ThisIsMyPassword"
        And I fill in "Password confirmation" with "ThisIsMyPassword"
        And I click on "Create" link
        Then I should see a message that states "Name has already been taken"

    Scenario: Sign up unsuccessfull - password can't be blank
        When I click on "Sign up" link
        Then I fill in "Name" with "Daniel"
        And I fill in "Email" with "dan@gmail.com"
        And I fill in "Password" with ""
        And I fill in "Password confirmation" with ""
        And I click on "Create" link
        Then I should see a message that states "Password can't be blank"