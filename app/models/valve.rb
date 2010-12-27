# == Schema Information
# Schema version: 20101221183627
#
# Table name: valves
#
#  id            :integer         not null, primary key
#  partnumber    :integer
#  head_id       :integer
#  gasket_id     :integer
#  ball_id       :integer
#  valvegroup_id :integer
#  iskit         :boolean
#  created_at    :datetime
#  updated_at    :datetime
#

class Valve < ActiveRecord::Base
  belongs_to :head
  belongs_to :gasket
  belongs_to :ball
  belongs_to :valvegroup
  
  validates :partnumber,  :presence => true
  validates :head_id,     :presence => true
  validates :gasket_id,   :presence => true
  validates :ball_id,     :presence => true
end
