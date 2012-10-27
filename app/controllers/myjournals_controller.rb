class MyjournalsController < ApplicationController
  # GET /myjournals
  # GET /myjournals.json
  def index
    @myjournals = Myjournal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @myjournals }
    end
  end

  # GET /myjournals/1
  # GET /myjournals/1.json
  def show
    @myjournal = Myjournal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @myjournal }
    end
  end

  # GET /myjournals/new
  # GET /myjournals/new.json
  def new
    @myjournal = Myjournal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @myjournal }
    end
  end

  # GET /myjournals/1/edit
  def edit
    @myjournal = Myjournal.find(params[:id])
  end

  # POST /myjournals
  # POST /myjournals.json
  def create
    @myjournal = Myjournal.new(params[:myjournal])

    respond_to do |format|
      if @myjournal.save
        format.html { redirect_to @myjournal, :notice => 'Myjournal was successfully created.' }
        format.json { render :json => @myjournal, :status => :created, :location => @myjournal }
      else
        format.html { render :action => "new" }
        format.json { render :json => @myjournal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /myjournals/1
  # PUT /myjournals/1.json
  def update
    @myjournal = Myjournal.find(params[:id])

    respond_to do |format|
      if @myjournal.update_attributes(params[:myjournal])
        format.html { redirect_to @myjournal, :notice => 'Myjournal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @myjournal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /myjournals/1
  # DELETE /myjournals/1.json
  def destroy
    @myjournal = Myjournal.find(params[:id])
    @myjournal.destroy

    respond_to do |format|
      format.html { redirect_to myjournals_url }
      format.json { head :no_content }
    end
  end
end
