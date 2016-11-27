class Evaluation < ActiveRecord::Base
  belongs_to :movie
  validates :perspicuity, presence: true, numericality: {less_than: 6, greater_than: 0}
  validates :device, presence: true, numericality: {less_than: 6, greater_than: 0}
  validates :voice, presence: true, numericality: {less_than: 6, greater_than: 0}
  validates :concern, presence: true, numericality: {less_than: 6, greater_than: 0}
  validates :speed, presence: true, numericality: {less_than: 6, greater_than: 0}
end
