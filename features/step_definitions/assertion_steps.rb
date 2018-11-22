Then('I should see {string}') do |string|
    expect(page).to have_content string
end

Then('I should be on the sign up page') do
    expect(current_path).to eq new_user_registration_path
end