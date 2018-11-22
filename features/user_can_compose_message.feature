Feature: User can compose message
    As a user
    In order to communicate with others
    I should be able to send messages

    Background: 
        Given the following user exists
        | name | email          | password | password_confirmation |
        | Greg | real@email.com | password | password              |
        And I am logged in as 'Greg'
        And I visit compose message site

    Scenario: 'When I fill in the compose message form I can send a message to someone'
        When I choose 'Greg' from 'Recipients'
        And I fill in 'Subject' field with 'Hello'
        And I fill in 'conversation_body' field with 'Hello there'
        And I click 'Message' 
        Then I should see 'Your message was successfully sent!'
        
    Scenario: "When I don't fill in the email I get an error message"
        When I click 'Message' 
        Then I should see 'You have to select a recipient!'

    Scenario: "When I don't fill in the subject or the message I get an error message"
        When I choose 'Greg' from 'Recipients'
        And I click 'Message'
        Then I should see 'You have to fill in subject and message!'