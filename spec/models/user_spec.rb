require 'rails_helper'

RSpec.describe User, type: :model do
  
  it "sends email upon :user creation" do
    user = create(:user)
    last_email = ActionMailer::Base.deliveries.last
    expect(last_email.to).to eq [user.email]
  end

  it "is not valid" do
      expect(User.new(email: nil)).not_to be_valid
    end
end
