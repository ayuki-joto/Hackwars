class User < ActiveRecord::Base
  validate :name,presence: true
  validate :area,presence: true
  validate :schooltype, presence: true
  validate :school, presence: true
  validate :schoolgrade,presence: true
  validate :subject,presence: true
  validate :email,presence: true

end
