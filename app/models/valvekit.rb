class Valvekit < ActiveRecord::Base
  belongs_to :dnsize
  belongs_to :head
  belongs_to :gasket
  belongs_to :ball
end
