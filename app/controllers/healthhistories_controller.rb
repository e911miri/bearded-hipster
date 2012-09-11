class HealthhistoriesController < ApplicationController
  # GET /healthhistories
  # GET /healthhistories.json
  def index
    @healthhistories = Healthhistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @healthhistories }
    end
  end

  # GET /healthhistories/1
  # GET /healthhistories/1.json
  def show
    # @healthhistory = Healthhistory.find(params[:id])
    @healthhistory=Healthhistory.first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @healthhistory }
    end
  end

  # GET /healthhistories/new
  # GET /healthhistories/new.json
  def new
    @healthhistory = Healthhistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @healthhistory }
    end
  end

  # GET /healthhistories/1/edit
  def edit
    @healthhistory = Healthhistory.find(params[:id])
  end

  # POST /healthhistories
  # POST /healthhistories.json
  def create
    @healthhistory = Healthhistory.new(params[:healthhistory])

    respond_to do |format|
      if @healthhistory.save
        format.html { redirect_to @healthhistory, notice: 'Healthhistory was successfully created.' }
        format.json { render json: @healthhistory, status: :created, location: @healthhistory }
      else
        format.html { render action: "new" }
        format.json { render json: @healthhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /healthhistories/1
  # PUT /healthhistories/1.json
  def update
    @healthhistory = Healthhistory.find(params[:id])

    respond_to do |format|
      if @healthhistory.update_attributes(params[:healthhistory])
        format.html { redirect_to @healthhistory, notice: 'Healthhistory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @healthhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthhistories/1
  # DELETE /healthhistories/1.json
  def destroy
    @healthhistory = Healthhistory.find(params[:id])
    @healthhistory.destroy

    respond_to do |format|
      format.html { redirect_to healthhistories_url }
      format.json { head :no_content }
    end
  end
end
