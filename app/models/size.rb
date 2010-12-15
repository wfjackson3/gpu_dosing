class Size < ActiveRecord::Base
  
  belongs_to :line
  belongs_to :dnsize
  
  def flow_pressure
    "#{flow} - #{pressure}"
  end
end
