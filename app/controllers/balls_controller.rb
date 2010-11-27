class BallsController < ApplicationController
  # GET /balls
  # GET /balls.xml
  def index
    @balls = Ball.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @balls }
    end
  end

  # GET /balls/1
  # GET /balls/1.xml
  def show
    @ball = Ball.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ball }
    end
  end

  # GET /balls/new
  # GET /balls/new.xml
  def new
    @ball = Ball.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ball }
    end
  end

  # GET /balls/1/edit
  def edit
    @ball = Ball.find(params[:id])
  end

  # POST /balls
  # POST /balls.xml
  def create
    @ball = Ball.new(params[:ball])

    respond_to do |format|
      if @ball.save
        format.html { redirect_to(@ball, :notice => 'Ball was successfully created.') }
        format.xml  { render :xml => @ball, :status => :created, :location => @ball }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ball.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /balls/1
  # PUT /balls/1.xml
  def update
    @ball = Ball.find(params[:id])

    respond_to do |format|
      if @ball.update_attributes(params[:ball])
        format.html { redirect_to(@ball, :notice => 'Ball was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ball.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /balls/1
  # DELETE /balls/1.xml
  def destroy
    @ball = Ball.find(params[:id])
    @ball.destroy

    respond_to do |format|
      format.html { redirect_to(balls_url) }
      format.xml  { head :ok }
    end
  end
end
