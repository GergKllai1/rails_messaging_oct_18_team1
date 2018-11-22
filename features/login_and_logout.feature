Feature: User can log in and log out
    As a User
    In order to communicate with others
    I would like to log in and out

    Scenario: When I click on login link, I will see login form
        When I am on the login page
        And I fill in my email correctly
        And I fill in my password correctly
        And I press 'Log in'
        Then I should see 'Signed in successfully.'