require 'rails_helper'

RSpec.describe User, type: :model do
  it "user can be created" do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end
end
