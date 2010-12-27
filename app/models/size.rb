# == Schema Information
# Schema version: 20101221183627
#
# Table name: sizes
#
#  id            :integer         not null, primary key
#  flow          :integer
#  pressure      :integer
#  line_id       :integer
#  valvegroup_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Size < ActiveRecord::Base
  
  belongs_to :line
  belongs_to :valvegroup
  
  def flow_pressure
    "#{flow} - #{pressure}"
  end
end
