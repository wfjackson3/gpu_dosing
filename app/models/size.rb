class Size < ActiveRecord::Base
  
  belongs_to :line
  belongs_to :valvegroup
  
  def flow_pressure
    "#{flow} - #{pressure}"
  end
end
