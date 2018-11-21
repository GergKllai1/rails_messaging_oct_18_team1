Then('I should see {string}') do |string|
    expect(page).to have_content string
end

Then('I should be on the sign up page') do
    expect(current_path).to eq new_user_registration_path
end

When('I fill in {string} field with {string}') do |field, input|
    fill_in field, with: input
end