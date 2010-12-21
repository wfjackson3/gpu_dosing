class ValvegroupsController < ApplicationController
  # GET /valvegroups
  # GET /valvegroups.xml
  def index
    @valvegroups = Valvegroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @valvegroups }
    end
  end

  # GET /valvegroups/1
  # GET /valvegroups/1.xml
  def show
    @valvegroup = Valvegroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @valvegroup }
    end
  end

  # GET /valvegroups/new
  # GET /valvegroups/new.xml
  def new
    @valvegroup = Valvegroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @valvegroup }
    end
  end

  # GET /valvegroups/1/edit
  def edit
    @valvegroup = Valvegroup.find(params[:id])
  end

  # POST /valvegroups
  # POST /valvegroups.xml
  def create
    @valvegroup = Valvegroup.new(params[:valvegroup])

    respond_to do |format|
      if @valvegroup.save
        format.html { redirect_to(@valvegroup, :notice => 'Valvegroup was successfully created.') }
        format.xml  { render :xml => @valvegroup, :status => :created, :location => @valvegroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @valvegroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /valvegroups/1
  # PUT /valvegroups/1.xml
  def update
    @valvegroup = Valvegroup.find(params[:id])

    respond_to do |format|
      if @valvegroup.update_attributes(params[:valvegroup])
        format.html { redirect_to(@valvegroup, :notice => 'Valvegroup was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @valvegroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /valvegroups/1
  # DELETE /valvegroups/1.xml
  def destroy
    @valvegroup = Valvegroup.find(params[:id])
    @valvegroup.destroy

    respond_to do |format|
      format.html { redirect_to(valvegroups_url) }
      format.xml  { head :ok }
    end
  end
end
