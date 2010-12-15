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
      @valve = @valve.where(:gasket_id => params[:gasket][:gasket_id]) if !params[:gasket][:gasket_id].blank?
      @valve = @valve.where(:dnsize_id => Size.find(:first, :conditions => {:id => params[:size][:size_id]}).dnsize_id)
      # This actually works
      # size = Size.find(:first, :conditions => {:id => params[:size][:size_id]} ).dnsize_id
      
      # Returns a relation, but does not work with .dnsize_id appended
      # @size = Size.where(:id => params[:size][:size_id]).dnsize_id
      
      # repeat for each piece of information required to uniquely identify a given kit
      @numb = @valve.length
    end
  end

end
