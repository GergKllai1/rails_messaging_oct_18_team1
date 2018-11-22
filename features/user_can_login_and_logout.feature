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
        And I fill in 'Password' field with 'password'
        And I tick remember me
        And I click 'Log in'
        Then I should see 'Signed in successfully.'
        When I click 'Logout'
        Then I should see 'Signed out successfully.'

    Scenario: When I log in with incorrect password
        Given I am on the login page
        And I fill in 'Email' field with 'jon@email.com'
        And I fill in 'Password' field with 'pasword'
        And I click 'Log in'
        Then I should see 'Invalid Email or password'
    
    Scenario: When I log in with incorrect email
        Given I am on the login page
        And I fill in 'Email' field with 'jone@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
        Then I should see 'Invalid Email or password'