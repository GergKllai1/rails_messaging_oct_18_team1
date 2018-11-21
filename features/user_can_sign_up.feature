Feature: User can sign up
    As a User
    In order to access the site
    I should be able to sign up

    Scenario: When I fill in the sign up form, I can sign up
        Given I visit the site
        When I click 'Sign up'
        Then I should be on the sign up page
        And I fill in 'Name' field with 'Jane'
        And I fill in 'Email' with 'jane@random.com'
        And I fill in 'Password' with 'password'
        And I fill in 'Password confirmation' with 'password'
        Then I click 'Create'
        And I should see 'Welcome! You have signed up successfully.'

