class DnSizesController < ApplicationController
  # GET /dn_sizes
  # GET /dn_sizes.xml
  def index
    @dn_sizes = DnSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dn_sizes }
    end
  end

  # GET /dn_sizes/1
  # GET /dn_sizes/1.xml
  def show
    @dn_size = DnSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dn_size }
    end
  end

  # GET /dn_sizes/new
  # GET /dn_sizes/new.xml
  def new
    @dn_size = DnSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dn_size }
    end
  end

  # GET /dn_sizes/1/edit
  def edit
    @dn_size = DnSize.find(params[:id])
  end

  # POST /dn_sizes
  # POST /dn_sizes.xml
  def create
    @dn_size = DnSize.new(params[:dn_size])

    respond_to do |format|
      if @dn_size.save
        format.html { redirect_to(@dn_size, :notice => 'Dn size was successfully created.') }
        format.xml  { render :xml => @dn_size, :status => :created, :location => @dn_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dn_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dn_sizes/1
  # PUT /dn_sizes/1.xml
  def update
    @dn_size = DnSize.find(params[:id])

    respond_to do |format|
      if @dn_size.update_attributes(params[:dn_size])
        format.html { redirect_to(@dn_size, :notice => 'Dn size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dn_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dn_sizes/1
  # DELETE /dn_sizes/1.xml
  def destroy
    @dn_size = DnSize.find(params[:id])
    @dn_size.destroy

    respond_to do |format|
      format.html { redirect_to(dn_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
