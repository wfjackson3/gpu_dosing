class Valve < ActiveRecord::Base
  attr_accessible :ball, :oring, :body, :mfg, :dn_size, :part_number
end
