class Search < ActiveRecord::Base
  
  def dnsize
    @dnsize ||= find_dnsize
  end
  
  private
  
  def find_dnsize
    Dnsize.search(params[:search])
  end
  
  
  
end
