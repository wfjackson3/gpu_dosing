# == Schema Information
# Schema version: 20101221183627
#
# Table name: searches
#
#  id         :integer         not null, primary key
#  line_id    :integer
#  flow       :integer
#  pressure   :integer
#  head_id    :integer
#  gasket_id  :integer
#  ball_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Search < ActiveRecord::Base
  
  belongs_to :dnsize
  belongs_to :head
  belongs_to :gasket
  belongs_to :ball
  belongs_to :line
  
  def dnsize
    @dnsize ||= find_dnsize
  end
  
  private
  
  def find_dnsize
    Dnsize.search(params[:search])
  end
  
  
  
end
