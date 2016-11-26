class Comment < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
end
