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
    @valve = Valve.limit(10) # replace this, it doesn't operate first it works last
    #raise params.inspect
    if !params[:line].nil?
      @valve = @valve.where(:line_id => params[:line][:line_id]) if !params[:line][:line_id].blank?
      @valve = @valve.where(:head_id => params[:head][:head_id]) if !params[:head][:head_id].blank?
      # repeat for each piece of information required to uniquely identify a given kit
      @numb = @valve.length
    end
    @kit = {:valve, @valve}
  end

end
