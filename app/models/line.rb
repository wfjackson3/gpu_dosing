class Line < ActiveRecord::Base
    has_many :valves
    has_many :sizes
    # has_many :checkballs
    # has_many :pumpheads
    
    belongs_to :company
end
