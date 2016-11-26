class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :evaluations
end
