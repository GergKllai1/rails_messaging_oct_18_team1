Given('I visit the site') do
    visit root_path
end

Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end


Given('I am on the sign up page') do
    visit new_user_registration_path
end

When("I click {string}") do |element|
    click_on element
end

When("stop") do
    save_and_open_page
end
