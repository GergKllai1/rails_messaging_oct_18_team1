Then('I should see {string}') do |string|
    expect(page).to have_content string
end

Then('I should be on the sign up page') do
    expect(current_path).to eq new_user_registration_path
end

Then('I should be on the login page') do
    visit new_user_session_path
end  

Then('I should be on welcome site') do
    visit welcome_index_path
end