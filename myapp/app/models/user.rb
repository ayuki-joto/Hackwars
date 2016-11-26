class User < ActiveRecord::Base
  has_many :comments
  has_many :movies
  validates :name, presence:true
  validates :area, presence:true
  validates :school, presence:true
  validates :schooltype, presence:true
  validates :schoolgrade, presence:true
  validates :subject, presence:true
  validates :email, presence:true
end
