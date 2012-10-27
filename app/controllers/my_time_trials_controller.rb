class MyTimeTrialsController < ApplicationController
  # GET /my_time_trials
  # GET /my_time_trials.json
  def index
    @my_time_trials = MyTimeTrial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @my_time_trials }
    end
  end

  # GET /my_time_trials/1
  # GET /my_time_trials/1.json
  def show
    @my_time_trial = MyTimeTrial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @my_time_trial }
    end
  end

  # GET /my_time_trials/new
  # GET /my_time_trials/new.json
  def new
    @my_time_trial = MyTimeTrial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @my_time_trial }
    end
  end

  # GET /my_time_trials/1/edit
  def edit
    @my_time_trial = MyTimeTrial.find(params[:id])
  end

  # POST /my_time_trials
  # POST /my_time_trials.json
  def create
    @my_time_trial = MyTimeTrial.new(params[:my_time_trial])

    respond_to do |format|
      if @my_time_trial.save
        format.html { redirect_to @my_time_trial, :notice => 'My time trial was successfully created.' }
        format.json { render :json => @my_time_trial, :status => :created, :location => @my_time_trial }
      else
        format.html { render :action => "new" }
        format.json { render :json => @my_time_trial.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /my_time_trials/1
  # PUT /my_time_trials/1.json
  def update
    @my_time_trial = MyTimeTrial.find(params[:id])

    respond_to do |format|
      if @my_time_trial.update_attributes(params[:my_time_trial])
        format.html { redirect_to @my_time_trial, :notice => 'My time trial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @my_time_trial.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /my_time_trials/1
  # DELETE /my_time_trials/1.json
  def destroy
    @my_time_trial = MyTimeTrial.find(params[:id])
    @my_time_trial.destroy

    respond_to do |format|
      format.html { redirect_to my_time_trials_url }
      format.json { head :no_content }
    end
  end
end
