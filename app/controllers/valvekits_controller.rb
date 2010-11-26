class ValvekitsController < ApplicationController
  # GET /valvekits
  # GET /valvekits.xml
  def index
    @valvekits = Valvekit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @valvekits }
    end
  end

  # GET /valvekits/1
  # GET /valvekits/1.xml
  def show
    @valvekit = Valvekit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @valvekit }
    end
  end

  # GET /valvekits/new
  # GET /valvekits/new.xml
  def new
    @valvekit = Valvekit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @valvekit }
    end
  end

  # GET /valvekits/1/edit
  def edit
    @valvekit = Valvekit.find(params[:id])
  end

  # POST /valvekits
  # POST /valvekits.xml
  def create
    @valvekit = Valvekit.new(params[:valvekit])

    respond_to do |format|
      if @valvekit.save
        format.html { redirect_to(@valvekit, :notice => 'Valvekit was successfully created.') }
        format.xml  { render :xml => @valvekit, :status => :created, :location => @valvekit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @valvekit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /valvekits/1
  # PUT /valvekits/1.xml
  def update
    @valvekit = Valvekit.find(params[:id])

    respond_to do |format|
      if @valvekit.update_attributes(params[:valvekit])
        format.html { redirect_to(@valvekit, :notice => 'Valvekit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @valvekit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /valvekits/1
  # DELETE /valvekits/1.xml
  def destroy
    @valvekit = Valvekit.find(params[:id])
    @valvekit.destroy

    respond_to do |format|
      format.html { redirect_to(valvekits_url) }
      format.xml  { head :ok }
    end
  end
end
