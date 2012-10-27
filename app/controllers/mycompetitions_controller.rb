class MycompetitionsController < ApplicationController
  # GET /mycompetitions
  # GET /mycompetitions.json
  def index
    @mycompetitions = Mycompetition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mycompetitions }
    end
  end

  # GET /mycompetitions/1
  # GET /mycompetitions/1.json
  def show
    @mycompetition = Mycompetition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mycompetition }
    end
  end

  # GET /mycompetitions/new
  # GET /mycompetitions/new.json
  def new
    @mycompetition = Mycompetition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mycompetition }
    end
  end

  # GET /mycompetitions/1/edit
  def edit
    @mycompetition = Mycompetition.find(params[:id])
  end

  # POST /mycompetitions
  # POST /mycompetitions.json
  def create
    @mycompetition = Mycompetition.new(params[:mycompetition])

    respond_to do |format|
      if @mycompetition.save
        format.html { redirect_to @mycompetition, :notice => 'Mycompetition was successfully created.' }
        format.json { render :json => @mycompetition, :status => :created, :location => @mycompetition }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mycompetition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mycompetitions/1
  # PUT /mycompetitions/1.json
  def update
    @mycompetition = Mycompetition.find(params[:id])

    respond_to do |format|
      if @mycompetition.update_attributes(params[:mycompetition])
        format.html { redirect_to @mycompetition, :notice => 'Mycompetition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mycompetition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mycompetitions/1
  # DELETE /mycompetitions/1.json
  def destroy
    @mycompetition = Mycompetition.find(params[:id])
    @mycompetition.destroy

    respond_to do |format|
      format.html { redirect_to mycompetitions_url }
      format.json { head :no_content }
    end
  end
end
