# installed gem bcrypt in gemfile
require 'bcrypt'
#  defining a class, User
class User
  include Mongoid::Document

  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  field :unit, type: Integer

#  I'e defined an assessor method to return the value of an instance variable @password
  attr_reader :password 

  has_many :items

#  This method is asking BCrypt to create a new password hash
# Allows setting of the password
  def password=(new_password)
    self.password_digest = BCrypt::Password.create(new_password)
  end

# test_password is the input from User.
# password_digest is value in db for the key password_digest
# BCrypt reverting back to the password_digest
  def authenticate(test_password)
    if test_password && BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end

end


