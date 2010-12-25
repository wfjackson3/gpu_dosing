class ValvesController < ApplicationController
  # GET /valves
  # GET /valves.xml
  def index
    @valves = Valve.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @valves }
    end
  end

  # GET /valves/1
  # GET /valves/1.xml
  def show
    @valve = Valve.find(params[:id])
    
    @size = Size.where(:valvegroup_id => Size.find(:all, :conditions => {:id => @valve[:id]}))

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @valve }
    end
  end

  # GET /valves/new
  # GET /valves/new.xml
  def new
    @valve = Valve.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @valve }
    end
  end

  # GET /valves/1/edit
  def edit
    @valve = Valve.find(params[:id])
  end

  # POST /valves
  # POST /valves.xml
  def create
    @valve = Valve.new(params[:valve])

    respond_to do |format|
      if @valve.save
        format.html { redirect_to(@valve, :notice => 'Valve was successfully created.') }
        format.xml  { render :xml => @valve, :status => :created, :location => @valve }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @valve.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /valves/1
  # PUT /valves/1.xml
  def update
    @valve = Valve.find(params[:id])

    respond_to do |format|
      if @valve.update_attributes(params[:valve])
        format.html { redirect_to(@valve, :notice => 'Valve was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @valve.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /valves/1
  # DELETE /valves/1.xml
  def destroy
    @valve = Valve.find(params[:id])
    @valve.destroy

    respond_to do |format|
      format.html { redirect_to(valves_url) }
      format.xml  { head :ok }
    end
  end
end
