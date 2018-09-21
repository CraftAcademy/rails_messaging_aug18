Given("I am logged-in as {string}") do |name|
    @user = User.find_by(name: name)
    login_as(@user, scope: :user)  
end

And("I send a mail from {string} to {string}") do |sender, receiver|
    @sender = User.find_by(name: sender)
    @receiver = User.find_by(name: receiver)
    @sender.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Then("I should have {string} messages") do |string|
    count = @receiver.mailbox.inbox.count
    expect(count).to eq expected_count.to_i
end