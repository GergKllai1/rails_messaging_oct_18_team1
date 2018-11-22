Feature: User can log in and log out
    As a User
    In order to communicate with others
    I would like to log in and out

    Background: 
        Given the following user exists
        | name | email          | password | password_confirmation |
        | Jon  | jon@email.com  | password | password              |

    Scenario: When I click on login link, I will see login form
        Given I am on the login page
        And I fill in 'Email' field with 'jon@email.com'
        Then show me the page
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
        Then I should see 'Signed in successfully.'
        When I click 'Logout'
        Then I should see 'Signed out successfully.'

    Scenario: When I log in incorrectly, I will see error message
        Given I am on the login page
        And I fill in 'Email' field with 'jon@email.com'
        And I fill in 'Password' field with 'pasword'
        And I click 'Log in'
        Then I should see 'Invalid Email or password'
        