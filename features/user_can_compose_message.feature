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
        Then I fill in 'Email' field with 'real@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
        Then I should see 'Signed in successfully.'
        And I should be on welcome site
        Then I click 'Inbox'
        And I should be on the inbox site
        And I click 'Compose'
        And I should be on the compose message site

    Scenario: 'When I fill in the compose message form I can send a message to someone'
        When I choose 'Greg' from 'Recipients'
        And I fill in 'Subject' field with 'Hello'
        And I fill in 'message' field with 'Hello agian'
        And I click 'Send message' 
        Then I should see 'Your message was successfully sent!'
