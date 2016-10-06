class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :attraction
  belongs_to :user
  # validates :user_id, :attraction_id, presence: true

  def take_ride
    
  end
end
