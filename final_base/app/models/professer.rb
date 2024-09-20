require 'bcrypt'
class Professer < ApplicationRecord
  include BCrypt
  attr_accessor :Password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :Name, presence: true , length: { maximum: 50 }
  validates :Email, presence: true, length: { maximum: 250 },
            format: { with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false }
  # has_secure_password
  validates :Password, presence: true, length: { maximum: 50 ,minimum: 6 }
  validates :Course_num, presence:true, numericality: true
  validates :Teaching_year, presence:true, numericality: true
  validates :Title, length: {maximum: 50}

  before_save :encrypt_password

  def encrypt_password
    self.passowrd_hash = BCrypt::Password.create(self.Password)
  end

  def self.authenticate(email, password)
    prof = Professer.find_by(Email: email)
    if prof
      pw = BCrypt::Password.new(prof.passowrd_hash)
      exists = (pw == password)

      if exists
        return prof
      else
        return nil
      end
    else
      return nil
    end
  end

end