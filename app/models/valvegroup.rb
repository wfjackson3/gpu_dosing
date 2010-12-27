# == Schema Information
# Schema version: 20101221183627
#
# Table name: valvegroups
#
#  id          :integer         not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Valvegroup < ActiveRecord::Base
  
  has_many :valves
  has_many :sizes
  
end
