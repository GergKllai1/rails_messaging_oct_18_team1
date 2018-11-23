Feature: User can manage messages
    As a user
    In order to manage my messages
    I should be able to reply and delete messages
    
    Background:
        Given the following user exists
        | name    | email              | password |
        | Greg    | greg@ranom.com     | password |
        | William | william@random.com | password |
        And William has sent a message to Greg

    Scenario: User can receive a message
        Then I should have '1' messages

    Scenario: User can reply to a message 
        When I click 'View'
        And I fill in 'Reply Message' field with 'Hey there soldier'
        And I click 'Reply'
        Then I should see 'Your reply message was successfully sent!'

    Scenario: User can delete a message
        When I click 'View' 
        And I click 'Move to trash'
        Then I should have '0' messages