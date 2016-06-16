require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build :user}

  describe "User Model" do

    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :password }

    context "#save" do
      it "returns true if user successfully saved to db" do
        expect{ user.save }.to change(User,:count).by(1)
      end
    end

    # context "Password formats" do
    #   it "password should be present (nonblank)" do
    #     user.password = user.password_confirmation = " " * 6
    #     expect(user.valid?).to be false
    #   end

    #   it "password should have a minimum length" do
    #     user.password = user.password_confirmation = "a" * 5
    #     expect (user.valid?).to be false
    #   end
    # end

    # describe "email validation should reject invalid addresses" do
    #   invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
    #                        foo@bar_baz.com foo@bar+baz.com]
    #   invalid_addresses.each do |invalid_address|
    #     user.email = invalid_address
    #     user.should_not be_valid
    #   end
    # end



  end
end
