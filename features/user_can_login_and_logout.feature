Feature: User can log in and log out
    As a User
    In order to communicate with others
    I would like to log in and out

    Background: 
        Given the following user exists
        | name | email          | password | password_confirmation |
        | Jon | fake@email.com | password | password              |
    

    Scenario: When I click on login link, I will see login form
        When I am on the login page
        And I fill in 'Email' field with 'fake@email.com'
        And I fill in 'Password' field with 'password'
        And I press 'Log in'
        Then I should see 'Signed in successfully.'


