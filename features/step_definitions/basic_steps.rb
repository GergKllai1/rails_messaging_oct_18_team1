Given('I visit the site') do
    visit root_path
end

Given('the following user exists') do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given('I am on the sign up page') do
    visit new_user_registration_path
end

When('I fill in {string} field with {string}') do |field, input|
    fill_in field, with: input
end

When('I click {string}') do |element|
    click_on element
end

When('I am on the login page') do
    visit new_user_session_path
end

When('I press {string}') do |link_name|
    click_link link_name
end

Given('I tick remember me') do
    check 'user_remember_me'
end

Given('show me the page') do
    save_and_open_page
end

Given('I am logged in as {string}') do |name|
    @user = User.find_by name: name
    login_as @user, scope: :user
end

Given('I am on the index page') do
    visit welcome_index_path
end

When('I choose {string} from {string}') do |input, field|
    select input, from: field
end

Given('I visit compose message site') do
    visit new_conversation_path
end

Given('I send a mail to {string}') do |name|
    @receiver = User.find_by name: name
    @user.send_message @receiver, 'Jon smells like coffee', 'Subject'
end

Given('William has sent a message to Greg') do 
    steps %(
        Given I am logged in as "William"
        And I send a mail to "Greg"
        And I am on the index page
        And I click 'Logout'
        Given I am logged in as 'Greg'
        And I am on the index page
        And I press 'Inbox'
        And I click 'View'
    )
end