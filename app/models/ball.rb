class Ball < ActiveRecord::Base
  has_many :valves
  # has_many :diaphragms
  # has_many :services
  # has_many :checkballs
  
  def code
    "#{typekey} - #{tradename}"
  end
end
