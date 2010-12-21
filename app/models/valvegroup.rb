class Valvegroup < ActiveRecord::Base
  
  has_many :valves
  has_many :sizes
  
end
