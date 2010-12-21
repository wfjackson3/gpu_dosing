class Valve < ActiveRecord::Base
  
  belongs_to :dnsize
  belongs_to :head
  belongs_to :gasket
  belongs_to :ball
  belongs_to :line
  belongs_to :valvegroup
  
end
