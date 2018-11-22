Then('I should see {string}') do |string|
    expect(page).to have_content string
end

Then('I should be on the sign up page') do
    expect(current_path).to eq new_user_registration_path
end

Then('I should be on the login page') do
    current_path.should == new_user_session_path
end  

Then('I should be on welcome site') do
    current_path.should == root_path
end

Then('I should be on the inbox site') do
    current_path.should == mailbox_inbox_path
end  

Then('I should be on the compose message site') do
    current_path.should == new_conversation_path
end
