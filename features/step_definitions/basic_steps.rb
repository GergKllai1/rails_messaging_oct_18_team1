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

When('I am on the {string} page') do |page_name|
    visit root_path
end

Given('I fill in {string} with {string}') do |field, email|
    fill_in field, with: email
end

=begin
Given('I tick remember me') do
    check 'user_remember_me'
end
=end

# for debugging
=begin
Given('show me the page') do
    save_and_open_page
end
=end