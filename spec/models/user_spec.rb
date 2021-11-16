require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    
    # validation examples here
    it 'save when have all features' do
      @user = User.new(name:"david",last_name:"Mike",email:"david@yahoo.com",password:"123",password_confirmation:"123")
      @user.save!
      expect(@user).to be_vaild 
    end
  end
end
