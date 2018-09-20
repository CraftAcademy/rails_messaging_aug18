Feature: Compose and send email
    As a logged in user
    In order to send an email
    I would like to be compose an email and send it from my account

    Background: 
        Given the following registered users exist
            | name            |email            | password           | password_confirmation    |
            | Happy           |happy@gmail.com  | password           | password                 |
            | Sad             |sad@gmail.com    | password           | password                 |
        And I visit the landing page
        And I click on "Login" link
        And I fill in "Email" with "happy@gmail.com"
        And I fill in "Password" with "password"
        And I click on "Log in" link
        Then show me the page
        And I click on "Inbox" link
        
    Scenario: Compose email and send
        When I click on "Compose" link
        And I fill in "Recipients" with "Sad"
        And I fill in "Subject" with "Testing compose"
        And I fill in "Message" with "This is a test message"
        And I click on "Send Message" link
        Then I should see a message that states "Your message was successfully sent!"