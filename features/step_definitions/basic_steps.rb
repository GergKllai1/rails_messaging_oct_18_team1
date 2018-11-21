Given('I visit the site') do
    visit root_path
end

Given('I am on the sign up page') do
    visit new_user_registration_path
end

When("I click {string}") do |element|
    click_on element
end
  
