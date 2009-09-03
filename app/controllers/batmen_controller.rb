class BatmenController < ApplicationController
  # GET /batmen
  # GET /batmen.xml
  def index
    @batmen = Batman.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @batmen }
    end
  end

  # GET /batmen/1
  # GET /batmen/1.xml
  def show
    @batman = Batman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @batman }
    end
  end

  # GET /batmen/new
  # GET /batmen/new.xml
  def new
    @batman = Batman.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @batman }
    end
  end

  # GET /batmen/1/edit
  def edit
    @batman = Batman.find(params[:id])
  end

  # POST /batmen
  # POST /batmen.xml
  def create
    @batman = Batman.new(params[:batman])

    respond_to do |format|
      if @batman.save
        flash[:notice] = 'Batman was successfully created.'
        format.html { redirect_to(@batman) }
        format.xml  { render :xml => @batman, :status => :created, :location => @batman }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @batman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /batmen/1
  # PUT /batmen/1.xml
  def update
    @batman = Batman.find(params[:id])

    respond_to do |format|
      if @batman.update_attributes(params[:batman])
        flash[:notice] = 'Batman was successfully updated.'
        format.html { redirect_to(@batman) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @batman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /batmen/1
  # DELETE /batmen/1.xml
  def destroy
    @batman = Batman.find(params[:id])
    @batman.destroy

    respond_to do |format|
      format.html { redirect_to(batmen_url) }
      format.xml  { head :ok }
    end
  end
end
