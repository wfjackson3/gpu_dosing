class Pump < ActiveRecord::Base
  attr_accessible :dn_size, :head_size, :line, :flow, :pressure
  
end
