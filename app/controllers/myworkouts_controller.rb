class MyworkoutsController < ApplicationController
  # GET /myworkouts
  # GET /myworkouts.json
  def index
    @myworkouts = Myworkout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @myworkouts }
    end
  end

  # GET /myworkouts/1
  # GET /myworkouts/1.json
  def show
    @myworkout = Myworkout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @myworkout }
    end
  end

  # GET /myworkouts/new
  # GET /myworkouts/new.json
  def new
    @myworkout = Myworkout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @myworkout }
    end
  end

  # GET /myworkouts/1/edit
  def edit
    @myworkout = Myworkout.find(params[:id])
  end

  # POST /myworkouts
  # POST /myworkouts.json
  def create
    @myworkout = Myworkout.new(params[:myworkout])

    respond_to do |format|
      if @myworkout.save
        format.html { redirect_to @myworkout, :notice => 'Myworkout was successfully created.' }
        format.json { render :json => @myworkout, :status => :created, :location => @myworkout }
      else
        format.html { render :action => "new" }
        format.json { render :json => @myworkout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /myworkouts/1
  # PUT /myworkouts/1.json
  def update
    @myworkout = Myworkout.find(params[:id])

    respond_to do |format|
      if @myworkout.update_attributes(params[:myworkout])
        format.html { redirect_to @myworkout, :notice => 'Myworkout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @myworkout.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /myworkouts/1
  # DELETE /myworkouts/1.json
  def destroy
    @myworkout = Myworkout.find(params[:id])
    @myworkout.destroy

    respond_to do |format|
      format.html { redirect_to myworkouts_url }
      format.json { head :no_content }
    end
  end
end
