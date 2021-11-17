class User < ActiveRecord::Base

has_secure_password
# validation when singup and login
validates :name, presence: true
validates :password , presence: true ,length: { minimum: 6 }
validates :password_confirmation, presence: true
validates :last_name, presence: true
validates :email, presence: true, uniqueness:{ case_sensitive: false }

  # user authentication
   def  self.authenticate_with_credentials (email,password)
    #  user can enter an email with  space and can be captalize 
    email = email.downcase.strip
    user = User.find_by(email: email) 
      if user && user.authenticate(password)
        user
      else
        nil 
     end
  end
end
