class DnsizesController < ApplicationController
  # GET /dnsizes
  # GET /dnsizes.xml
  def index
    @dnsizes = Dnsize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dnsizes }
    end
  end

  # GET /dnsizes/1
  # GET /dnsizes/1.xml
  def show
    @dnsize = Dnsize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dnsize }
    end
  end

  # GET /dnsizes/new
  # GET /dnsizes/new.xml
  def new
    @dnsize = Dnsize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dnsize }
    end
  end

  # GET /dnsizes/1/edit
  def edit
    @dnsize = Dnsize.find(params[:id])
  end

  # POST /dnsizes
  # POST /dnsizes.xml
  def create
    @dnsize = Dnsize.new(params[:dnsize])

    respond_to do |format|
      if @dnsize.save
        format.html { redirect_to(@dnsize, :notice => 'Dnsize was successfully created.') }
        format.xml  { render :xml => @dnsize, :status => :created, :location => @dnsize }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dnsize.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dnsizes/1
  # PUT /dnsizes/1.xml
  def update
    @dnsize = Dnsize.find(params[:id])

    respond_to do |format|
      if @dnsize.update_attributes(params[:dnsize])
        format.html { redirect_to(@dnsize, :notice => 'Dnsize was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dnsize.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dnsizes/1
  # DELETE /dnsizes/1.xml
  def destroy
    @dnsize = Dnsize.find(params[:id])
    @dnsize.destroy

    respond_to do |format|
      format.html { redirect_to(dnsizes_url) }
      format.xml  { head :ok }
    end
  end
end
