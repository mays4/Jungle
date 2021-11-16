require 'rails_helper'

RSpec.describe User, type: :model do
  subject{ 
    described_class.new(
      name: 'noor', 
      last_name: 'ali', 
      email: 'email@email.com', 
      password: 'air123', 
      password_confirmation: 'air123')
    }
  describe 'Validations' do

    # validation examples here
    it 'saves with all fields filled in' do
      expect(subject).to be_valid
    end
  
    it 'not vaild without email' do
      subject.email = nil
      expect(subject).to_not be_valid
      expect(subject.errors).not_to be_empty
    end

    it 'not vaild without name' do
      subject.name = nil
      expect(subject).to_not be_valid
      expect(subject.errors).not_to be_empty
    end
    it 'not vaild without last_name' do
      subject.last_name= nil
      expect(subject).to_not be_valid
      expect(subject.errors).not_to be_empty
    end
    it 'not vaild without password' do
      subject.password= nil
      expect(subject).to_not be_valid
      expect(subject.errors).not_to be_empty
    end
    it 'not vaild without password_confirmation' do
      subject.password_confirmation= nil
      expect(subject).to_not be_valid
      expect(subject.errors).not_to be_empty
    end
    it 'not vaild without password equal  password_confirmation' do
      
      subject.password = '123123'
      subject.password_confirmation = '122122'
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'email should be unique ' do
      subject.save
      test_user = User.new(
        name: 'noor', 
        last_name: 'ali', 
        email: 'email@email.com', 
        password: 'air123', 
         password_confirmation: 'air123')
         test_user.save
        expect(test_user).to_not be_valid
    end
    it 'password should be minimum 6 characters' do
    
     subject.password = "123"
     subject.password_confirmation= "123"
      expect(subject).to_not be_valid
       expect(subject.errors[:password]).to include("is too short (minimum is 6 characters)")
  
    end
  end
  describe '.authenticate_with_credentials' do
    # examples for this class method here
  it('should pass with vaild credentials')do
    subject.save
    result = User.authenticate_with_credentials('email@email.com','air123')
    expect(result).not_to be(nil)
  end
  it('should  not pass with invaild credentials')do
    
    subject = User.authenticate_with_credentials('email@email.com','air124')
    expect(subject).to be(nil)
  end
  it('should pass with  space  in email ')do
    subject.save
    subject = User.authenticate_with_credentials(' email@email.com ','air123')
    expect(subject).not_to eq(nil)
end
it('should pass with  capltilize  in email ')do
    subject.save
    subject = User.authenticate_with_credentials('EMAIL@email.com','air123')
    expect(subject).not_to eq(nil)
end
end
end
