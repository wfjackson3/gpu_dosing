# == Schema Information
# Schema version: 20101221183627
#
# Table name: lines
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Line < ActiveRecord::Base
  
  has_many :valves
  has_many :sizes
  # has_many :checkballs
  # has_many :pumpheads
  
  belongs_to :company
  
  validates :name,  :presence => true,
                    :uniqueness => {:case_sensitive => false}
  
end
