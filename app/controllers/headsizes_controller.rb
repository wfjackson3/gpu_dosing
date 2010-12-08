class HeadsizesController < ApplicationController
  # GET /headsizes
  # GET /headsizes.xml
  def index
    @headsizes = Headsize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @headsizes }
    end
  end

  # GET /headsizes/1
  # GET /headsizes/1.xml
  def show
    @headsize = Headsize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @headsize }
    end
  end

  # GET /headsizes/new
  # GET /headsizes/new.xml
  def new
    @headsize = Headsize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @headsize }
    end
  end

  # GET /headsizes/1/edit
  def edit
    @headsize = Headsize.find(params[:id])
  end

  # POST /headsizes
  # POST /headsizes.xml
  def create
    @headsize = Headsize.new(params[:headsize])

    respond_to do |format|
      if @headsize.save
        format.html { redirect_to(@headsize, :notice => 'Headsize was successfully created.') }
        format.xml  { render :xml => @headsize, :status => :created, :location => @headsize }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @headsize.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /headsizes/1
  # PUT /headsizes/1.xml
  def update
    @headsize = Headsize.find(params[:id])

    respond_to do |format|
      if @headsize.update_attributes(params[:headsize])
        format.html { redirect_to(@headsize, :notice => 'Headsize was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @headsize.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /headsizes/1
  # DELETE /headsizes/1.xml
  def destroy
    @headsize = Headsize.find(params[:id])
    @headsize.destroy

    respond_to do |format|
      format.html { redirect_to(headsizes_url) }
      format.xml  { head :ok }
    end
  end
end
