class Attraction < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :users, through: :rides
  # validates :nausea_rating, :happiness_rating, :tickets, presence: true

  # # :name, :min_height, 
end
