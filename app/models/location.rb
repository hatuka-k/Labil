class Location < ActiveRecord::Base
  validates :name, presence: true
  validates :category, presence: true
  has_many :statuses 
  has_many :members, through: :statuses
end
