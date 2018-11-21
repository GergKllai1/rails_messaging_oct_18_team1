Feature: User visits site
    As a User
    In order to access the site
    I should see an opening page

    Scenario: When visiting the site I should see all the content 
        Given I visit the site 
        Then I should see 'Craft Academy Mailboxer'
        And I should see 'Login'
        And I should see 'Sign up'
        And I should see 'CA Mailboxer'