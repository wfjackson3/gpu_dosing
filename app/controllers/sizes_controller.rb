class SizesController < ApplicationController
  # GET /sizes
  # GET /sizes.xml
  def index
    @sizes = Size.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sizes }
    end
  end

  # GET /sizes/1
  # GET /sizes/1.xml
  def show
    @size = Size.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @size }
    end
  end

  # GET /sizes/new
  # GET /sizes/new.xml
  def new
    @size = Size.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @size }
    end
  end

  # GET /sizes/1/edit
  def edit
    @size = Size.find(params[:id])
  end

  # POST /sizes
  # POST /sizes.xml
  def create
    @size = Size.new(params[:size])

    respond_to do |format|
      if @size.save
        format.html { redirect_to(@size, :notice => 'Size was successfully created.') }
        format.xml  { render :xml => @size, :status => :created, :location => @size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sizes/1
  # PUT /sizes/1.xml
  def update
    @size = Size.find(params[:id])

    respond_to do |format|
      if @size.update_attributes(params[:size])
        format.html { redirect_to(@size, :notice => 'Size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sizes/1
  # DELETE /sizes/1.xml
  def destroy
    @size = Size.find(params[:id])
    @size.destroy

    respond_to do |format|
      format.html { redirect_to(sizes_url) }
      format.xml  { head :ok }
    end
  end
end
