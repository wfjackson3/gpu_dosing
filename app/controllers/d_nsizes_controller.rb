class DNsizesController < ApplicationController
  # GET /d_nsizes
  # GET /d_nsizes.xml
  def index
    @d_nsizes = DNsize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @d_nsizes }
    end
  end

  # GET /d_nsizes/1
  # GET /d_nsizes/1.xml
  def show
    @d_nsize = DNsize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @d_nsize }
    end
  end

  # GET /d_nsizes/new
  # GET /d_nsizes/new.xml
  def new
    @d_nsize = DNsize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @d_nsize }
    end
  end

  # GET /d_nsizes/1/edit
  def edit
    @d_nsize = DNsize.find(params[:id])
  end

  # POST /d_nsizes
  # POST /d_nsizes.xml
  def create
    @d_nsize = DNsize.new(params[:d_nsize])

    respond_to do |format|
      if @d_nsize.save
        format.html { redirect_to(@d_nsize, :notice => 'D nsize was successfully created.') }
        format.xml  { render :xml => @d_nsize, :status => :created, :location => @d_nsize }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @d_nsize.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /d_nsizes/1
  # PUT /d_nsizes/1.xml
  def update
    @d_nsize = DNsize.find(params[:id])

    respond_to do |format|
      if @d_nsize.update_attributes(params[:d_nsize])
        format.html { redirect_to(@d_nsize, :notice => 'D nsize was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @d_nsize.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /d_nsizes/1
  # DELETE /d_nsizes/1.xml
  def destroy
    @d_nsize = DNsize.find(params[:id])
    @d_nsize.destroy

    respond_to do |format|
      format.html { redirect_to(d_nsizes_url) }
      format.xml  { head :ok }
    end
  end
end
