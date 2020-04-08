require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is valid with valid attributes" do
    user = build(:user)
    expect(user).to be_valid
  end
  it "is not valid without an email" do
    user = build(:user)
    user.email = ""
    expect(user).to_not be_valid
  end
  it "is not valid with invalid email" do
    user = build(:user)
    user.email = "blabla"
    expect(user).to_not be_valid
  end
end