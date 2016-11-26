class Comment < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  validate :content, presence: true, length: { maximum: 140 }
end
