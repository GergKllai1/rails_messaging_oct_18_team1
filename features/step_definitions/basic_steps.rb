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

When('I choose {string} from {string}') do |input, field|
    select input, from: field
end

Given('I am logged in as {string}') do |name|
    user = User.find_by(name: name)
    login_as(user, scope: :user)
end

Given('I visit compose message site') do
    visit new_conversation_path
end
