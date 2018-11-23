Feature: User can manage messages
    As a user
    In order to manage my messages
    I should be able to reply and delete messages
    
    Background:
        Given the following user exists
        | name    | email              | password |
        | Greg    | greg@ranom.com     | password |
        | William | william@random.com | password |

    Scenario: User can receive a message
        Given I am logged in as 'William'
        And I send a mail to 'Greg'
        And I am on the index page
        And I click 'Logout'
        Given I am logged in as 'Greg'
        And I am on the index page
        And I press 'Inbox'
        Then I should have '1' messages
        #And I click on the 'View' link
        # And I click on the 'Move to trash' link
        # Then I should have '0' messages 