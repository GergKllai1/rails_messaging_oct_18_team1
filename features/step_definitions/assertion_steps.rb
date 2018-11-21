Then('I should see {string}') do |string|
    expect(page).to have_content string
end

Then("I should be on the sign up page") do
    expect(current_path).to eq new_user_registration_path
end

Then("I fill in {string} field with {string}") do |input, string2|

end

Then("I fill in {string} with {string}") do |string, string2|

end