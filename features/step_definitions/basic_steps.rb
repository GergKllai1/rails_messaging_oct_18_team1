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

When('I click {string}') do |element|
    click_on element
end

Then('I should be on the login page') do
    visit new_user_session_path
end  

Then('I should be on welcome site') do
    visit welcome_index_path
end

Then("I should be on the inbox site") do
    visit mailbox_inbox_path
end  

Then("I should be on the compose message site") do
    visit new_conversation_path
end

When("I choose {string} from {string}") do |input, field|
    select input, from: field
end

  