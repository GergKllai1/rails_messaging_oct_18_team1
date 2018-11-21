Feature: User can sign up
    As a User
    In order to access the site
    I should be able to sign up

    Background: 
        Given the following user exists
        |name | email          | password | password_confirmation |
        |Greg | real@email.com | password | password              |
        And I visit the site
        When I click 'Sign up'
        Then I should be on the sign up page

    Scenario: When I fill in the sign up form, I can sign up
        When I fill in 'Name' field with 'Jane Dane'
        And I fill in 'Email' field with 'jane@random.com'
        And I fill in 'Password' field with 'password'
        And I fill in 'Password confirmation' field with 'password'
        And I click 'Create'
        Then I should see 'Welcome! You have signed up successfully.'

