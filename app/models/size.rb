class Size < ActiveRecord::Base
  
  belongs_to :line
  belongs_to :valvegroup
  
  # The relationship below this line is deprecated
  belongs_to :dnsize
  
  def flow_pressure
    "#{flow} - #{pressure}"
  end
end
