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
