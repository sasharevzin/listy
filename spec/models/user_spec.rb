require "rails_helper"

RSpec.describe User, type: :model do
  let(:user){ FactoryGirl.create(:user) }

  it "should have full_name" do
    expect(user.full_name).to eq("#{user.first_name} #{user.last_name}")
  end
end
