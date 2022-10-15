require 'rails_helper'

RSpec.describe User, type: :model do
  it "must have a first name" do
    user = create(:user)
    expect(user.first_name).not_to be_nil
  end

  it "must have a role" do
    user = create(:user)
    expect(user.role).not_to be_nil
  end

  it "must have a unique email" do
    user1 = create(:user)
    expect(user1.email).not_to be_nil

    user2 = create(:user)
    expect(user1.email).not_to eq(user2.email)
  end

  it "must have a password of length 6 at least" do
    user = create(:user)
    expect(user.password.length).to be >= 6
  end
end