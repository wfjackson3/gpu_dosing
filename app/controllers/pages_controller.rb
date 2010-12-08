class PagesController < ApplicationController
  def home
    @title="Home"
  end

  def about
    @title="About"
  end
  
  def contact
    @title="Contact"
  end
  
  def admin
    @title="Admin"
  end
  
  def find
    @title="Find"
#    @kits = Valve.search(params[:search])
  end

end
