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
  
  def import
    @results = CsvMapper.import('/home/wfj3/Aptana Studio 3 Workspace/gpu_dosing/test_import.csv') do
      # read_attributes_from_file
      map_to Size
      after_row lambda{|row, size| size.save}
      start_at_row 1
      flow
      pressure
      line_id
      valvegroup_id
    end
  end
  
  def find
    @title="Find"
    @valve = Valve.limit(10) # replace this, it doesn't operate first it works last
    #raise params.inspect
    if !params[:line].nil?
      # The line where statement needs to be removed once I figure out how to filter the sizes shown based on the selected line
      # @valve = @valve.where(:line_id => params[:line][:line_id]) if !params[:line][:line_id].blank?
      @valve = @valve.where(:head_id => params[:head][:head_id]) if !params[:head][:head_id].blank?
      @valve = @valve.where(:gasket_id => params[:gasket][:gasket_id]) if !params[:gasket][:gasket_id].blank?
      @valve = @valve.where(:ball_id => params[:ball][:ball_id]) if !params[:ball][:ball_id].blank?
      @valve = @valve.where(:valvegroup_id => Size.find(:first, :conditions => {:id => params[:size][:size_id]}).valvegroup_id)
      # This actually works
      # size = Size.find(:first, :conditions => {:id => params[:size][:size_id]} ).dnsize_id
      
      # Returns a relation, but does not work with .dnsize_id appended
      # @size = Size.where(:id => params[:size][:size_id]).dnsize_id
      
      # repeat for each piece of information required to uniquely identify a given kit
      @numb = @valve.length
    end
  end

end