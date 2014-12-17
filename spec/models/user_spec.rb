require "rails_helper"

describe User do

    it "has an email" do
      user = FactoryGirl.build_stubbed(:a_user)
      expect(user.email).to_not be_nil  
    end

    it "has a password" do
      user = FactoryGirl.build_stubbed(:a_user)
      expect(user.password).to_not be_nil
    end

end