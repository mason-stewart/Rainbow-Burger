class BurgersController < ApplicationController
  # GET /burgers
  # GET /burgers.xml
  def index
    @burgers = Burger.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @burgers }
    end
  end

  # GET /burgers/1
  # GET /burgers/1.xml
  def show
    @burger = Burger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @burger }
    end
  end

  # GET /burgers/new
  # GET /burgers/new.xml
  def new
    @burger = Burger.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @burger }
    end
  end

  # GET /burgers/1/edit
  def edit
    @burger = Burger.find(params[:id])
  end

  # POST /burgers
  # POST /burgers.xml
  def create
    @burger = Burger.new(params[:burger])

    respond_to do |format|
      if @burger.save
        format.html { redirect_to(@burger, :notice => 'Burger was successfully created.') }
        format.xml  { render :xml => @burger, :status => :created, :location => @burger }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @burger.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /burgers/1
  # PUT /burgers/1.xml
  def update
    @burger = Burger.find(params[:id])

    respond_to do |format|
      if @burger.update_attributes(params[:burger])
        format.html { redirect_to(@burger, :notice => 'Burger was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @burger.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /burgers/1
  # DELETE /burgers/1.xml
  def destroy
    @burger = Burger.find(params[:id])
    @burger.destroy

    respond_to do |format|
      format.html { redirect_to(burgers_url) }
      format.xml  { head :ok }
    end
  end
end
