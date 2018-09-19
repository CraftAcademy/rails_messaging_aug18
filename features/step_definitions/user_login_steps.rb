Given("the following registered user exists") do |table|
    table.hashes.each do |user|
        User.create!(user)
    end
end

Given("I visit the landing page") do
    visit root_path
end
  
Given("I click on {string} link") do |link|
    click_on link
end

When("I fill in {string} with {string}") do |field, input|
    fill_in field, with: input
end

Then("I should see a message that states {string}") do |message|
    expect(page).to have_content message
end

Given("show me the page") do
    save_and_open_page 
end