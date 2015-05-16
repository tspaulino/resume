require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }

  describe "#full_name" do
    it "returns first and last name in a single string" do
      user = User.new(first_name: "Foo", last_name: "Bar")
      expect(user.full_name).to eq("Foo Bar")
    end
  end
end
