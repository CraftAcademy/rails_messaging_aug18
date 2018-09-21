Feature: Deleting messages
    As a user
    In order to delete my messages from my inbox / sent items
    I would like to be able to move messages to trash

    Background: 
        Given the following registered users exist
            | name  | email           | password | password_confirmation |
            | Happy | happy@gmail.com | password | password              |
            | Sad   | sad@gmail.com   | password | password              |
       
    Scenario: Deleting a message
        Given I am logged in as "Sad"
        And I send a mail from "Sad" to "Happy"
        And I visit the landing page
        And I click on "Logout" link
        Given I am logged-in as "Happy"
        And I visit the landing page
        And I click on "Inbox" link
        Then I should have "1" messages
        And I click on "View" link
        And I click on "Move to trash" link
        Then I should have "0" messages