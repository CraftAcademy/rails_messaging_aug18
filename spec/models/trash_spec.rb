require 'rails_helper'

RSpec.describe User, type: :model do
    
    before do
        @current_user = User.new
        @recipients = User.new
        @conversation = @current_user.send_message(@recipients, 'Lorem ipsum...', 'Subject')
        @conversation.move_to_trash       
    end

    it 'recipients trash box should be 1' do
        recipients_trash_count = @recipients.mailbox.trash.count    
        expect(recipients_trash_count).to eq 1
    end


    describe 'Factory' do
        it 'should have valid factory' do
            expect(FactoryBot.create(:user)).to be_valid
        end
    end
end