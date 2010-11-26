class GasketsController < ApplicationController
  # GET /gaskets
  # GET /gaskets.xml
  def index
    @gaskets = Gasket.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gaskets }
    end
  end

  # GET /gaskets/1
  # GET /gaskets/1.xml
  def show
    @gasket = Gasket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gasket }
    end
  end

  # GET /gaskets/new
  # GET /gaskets/new.xml
  def new
    @gasket = Gasket.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gasket }
    end
  end

  # GET /gaskets/1/edit
  def edit
    @gasket = Gasket.find(params[:id])
  end

  # POST /gaskets
  # POST /gaskets.xml
  def create
    @gasket = Gasket.new(params[:gasket])

    respond_to do |format|
      if @gasket.save
        format.html { redirect_to(@gasket, :notice => 'Gasket was successfully created.') }
        format.xml  { render :xml => @gasket, :status => :created, :location => @gasket }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gasket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gaskets/1
  # PUT /gaskets/1.xml
  def update
    @gasket = Gasket.find(params[:id])

    respond_to do |format|
      if @gasket.update_attributes(params[:gasket])
        format.html { redirect_to(@gasket, :notice => 'Gasket was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gasket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gaskets/1
  # DELETE /gaskets/1.xml
  def destroy
    @gasket = Gasket.find(params[:id])
    @gasket.destroy

    respond_to do |format|
      format.html { redirect_to(gaskets_url) }
      format.xml  { head :ok }
    end
  end
end
