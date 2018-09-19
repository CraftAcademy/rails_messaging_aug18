Feature: Registered user Login from homepage
    As a registerd user
    In order to see my emails
    I would like to be able to login to my account

    Background: 
        Given the following registered user exists
            | name             |email            | password             |
            | rupert           |rupert@gmail.com | rupertlion           |
        And I visit the landing page
        
    Scenario: Login successful (happy path)
        When I click on "Login" link
        And I fill in "Email" with "rupert@gmail.com"
        And I fill in "Password" with "rupert"
        And I click on "Log in" link
        Then I should see a message that states "Signed in successfully."