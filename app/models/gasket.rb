class Gasket < ActiveRecord::Base
    has_many :valves
    # has_many :diaphragms
    # has_many :services
end
