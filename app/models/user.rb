class User < ActiveRecord::Base
  # write associations here
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood 
    if self.happiness && self.nausea
      mood = self.happiness - self.nausea
      mood > 0 ? "happy" : "sad"
    end
  end


end
