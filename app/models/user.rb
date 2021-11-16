class User < ActiveRecord::Base
  def  self.authenticate_with_credentials (email,password)
     email = email.downcase.strip
      user = User.find_by(email: email) 
        if user && user.authenticate(password)
          user
        else
          nil 
       end
  end
  has_secure_password
  validates :name, presence: true
  validates :password , presence: true ,length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness:{ case_sensitive: false }

end
