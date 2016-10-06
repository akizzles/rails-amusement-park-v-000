class User < ActiveRecord::Base
  # write associations here
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  # validates :name, :password, :happiness, :nausea, :height, :tickets, presence: true


  def mood
    if self.nausea > self.happiness
      "sad"
    elsif self.nausea == self.happiness
      "apathy"
    else
      "happy"
    end
  end


end
