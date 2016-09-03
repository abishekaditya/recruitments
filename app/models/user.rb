class User < ApplicationRecord
  has_secure_password
  validates :reg_no, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true, :confirmation => true
  has_many :answers, through: :questions
  before_save :upcase_fields

  def upcase_fields
    self.reg_no.upcase!
  end

  def filled_repo?
    !(self.read_attribute(:repository).nil?)
  end

  def filled_port?
    !(self.read_attribute(:portfolio).nil?)
  end
end
