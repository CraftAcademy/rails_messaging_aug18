require 'rails_helper'

RSpec.describe User, type: :model do
    
    before do
        @current_user = User.new
        @recipients = User.new
        conversation = @current_user.send_message(@recipients, 'Lorem ipsum...', 'Subject')
    end


    it 'recipient inbox should be 1 and sender sent box should be 1' do
        recipients_inbox_count = @recipients.mailbox.inbox.count
        expect(recipients_inbox_count).to eq 1
        sender_sentbox_count = @current_user.mailbox.sentbox.count    
        expect(sender_sentbox_count).to eq 1
    end


    describe 'Factory' do
        it 'should have valid factory' do
            expect(FactoryBot.create(:user)).to be_valid
        end
    end
end