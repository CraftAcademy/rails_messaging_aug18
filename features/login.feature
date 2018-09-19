Feature: Registered user Login from homepage
    As a registerd user
    In order to see my emails
    I would like to be able to login to my account

    Background: 
        Given the following registered user exists
            | name            |email            | password           | password_confirmation    |
            | Happy           |happy@gmail.com  | password           | password                 |
        And I visit the landing page
        
    Scenario: Login successful (happy path)
        When I click on "Login" link
        And I fill in "Email" with "happy@gmail.com"
        And I fill in "Password" with "password"
        And I click on "Log in" link
        Then I should see a message that states "Signed in successfully."

    Scenario: Login unsuccessful - invalid password (sad path)
        When I click on "Login" link
        And I fill in "Email" with "happy@gmail.com"
        And I fill in "Password" with "passwordx"
        And I click on "Log in" link
        Then I should see a message that states "Invalid Email or password."

    Scenario: Login unsuccessful - invalid email (sad path)
        When I click on "Login" link
        And I fill in "Email" with "bill@gmail.com"
        And I fill in "Password" with "password"
        And I click on "Log in" link
        Then I should see a message that states "Invalid Email or password."