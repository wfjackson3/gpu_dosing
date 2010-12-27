# == Schema Information
# Schema version: 20101221183627
#
# Table name: gaskets
#
#  id         :integer         not null, primary key
#  material   :string(255)
#  typekey    :string(255)
#  tradename  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Gasket < ActiveRecord::Base
  has_many :valves
  # has_many :diaphragms
  # has_many :services
  
  validates :typekey,   :presence => true,
                        :uniqueness => {:case_sensitive => false}
  validates :tradename, :presence => true,
                        :uniqueness => {:case_sensitive => false}

  def code
    "#{typekey} - #{tradename}"
  end
end
