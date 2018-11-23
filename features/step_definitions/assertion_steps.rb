Then('I should see {string}') do |string|
    expect(page).to have_content string
end

Then('I should be on the sign up page') do
    expect(current_path).to eq new_user_registration_path
end

Then('I should see {string} field with {string}') do |field, email|
    expect(field).to have_content(email)
end
Then('I should be on the login page') do
    expect(current_path).to eq new_user_session_path
end  

Then('I should be on welcome site') do
    expect(current_path).to eq root_path
end

Then('I should be on the inbox site') do
    expect(current_path).to eq mailbox_inbox_path
end  

Then('I should be on the compose message site') do
    expect(current_path).to eq new_conversation_path
end

Then('I should have {string} messages') do |expected_count|
    count = @receiver.mailbox.inbox.count
    expect(count).to eq expected_count.to_i
end  
