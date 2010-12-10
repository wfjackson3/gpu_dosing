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
    @kits = Valve.limit(10) # replace this, it doesn't operate first it works last
    #raise params.inspect
    if !params[:line].nil?
      @kits = @kits.where(:line_id => params[:line][:line_id]) if !params[:line][:line_id].blank?
    # repeat for each piece of information required to uniquely identify a given kit
    end
  end

end
