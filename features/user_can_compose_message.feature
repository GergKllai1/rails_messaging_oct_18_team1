Feature: User can compose message
    As a user
    In order to communicate with others
    I should be able to send and receive messages

    Background: 
        Given the following user exists
        | name | email          | password | password_confirmation |
        | Greg | real@email.com | password | password              |
        And I visit the site
        When I click 'Login'
        Then I should be on the login page

    Scenario: When I log in correctly I can see the inbox