class User < ApplicationRecord
  has_secure_password
  validates :reg_no, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true, :confirmation => true
  has_many :answers, through: :questions

end
