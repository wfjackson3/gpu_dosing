class Valvekit < ActiveRecord::Base
  belongs_to :dnsize
  belongs_to :head
  belongs_to :gasket
  belongs_to :ball
  
  #attr_accessible
  
  def self.search(search)
    if search
      find(:all)
    end
  end
end
