require 'bcrypt'
class Student < ApplicationRecord
  include BCrypt
  attr_accessor :Password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :Name, presence: true , length: { maximum: 50 }
  validates :Email, presence: true, length: { maximum: 250 },
            format: { with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false }
  
  #has_secure_password
  validates :Password, presence: true, length: { maximum: 50 ,minimum: 6 }

  before_save :encrypt_password

  def password
  	@password ||= Password.new(passowrd_hash)
  end

  def password=(new_password)
  	@password = Password.create(my_password)
  	self.passowrd_hash = @password
  end

  def encrypt_password
  	self.passowrd_hash = BCrypt::Password.create(self.Password)
  end

  def self.authenticate(email, password)
  	student = Student.find_by(Email: email)
  	if student
  		pw = BCrypt::Password.new(student.passowrd_hash)
  		exists = (pw == password)

  		if exists
  			return student
  		else
  	 		return nil
  		end
  	else
  		return nil
  	end
  end

end