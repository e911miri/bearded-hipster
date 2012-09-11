class AlergiesController < ApplicationController
  # GET /alergies
  # GET /alergies.json
  def index
    @alergies = Alergy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alergies }
    end
  end

  # GET /alergies/1
  # GET /alergies/1.json
  def show
    @alergy = Alergy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alergy }
    end
  end

  # GET /alergies/new
  # GET /alergies/new.json
  def new
    @alergy = Alergy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alergy }
    end
  end

  # GET /alergies/1/edit
  def edit
    @alergy = Alergy.find(params[:id])
  end

  # POST /alergies
  # POST /alergies.json
  def create
    @alergy = Alergy.new(params[:alergy])

    respond_to do |format|
      if @alergy.save
        format.html { redirect_to @alergy, notice: 'Alergy was successfully created.' }
        format.json { render json: @alergy, status: :created, location: @alergy }
      else
        format.html { render action: "new" }
        format.json { render json: @alergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alergies/1
  # PUT /alergies/1.json
  def update
    @alergy = Alergy.find(params[:id])

    respond_to do |format|
      if @alergy.update_attributes(params[:alergy])
        format.html { redirect_to @alergy, notice: 'Alergy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alergies/1
  # DELETE /alergies/1.json
  def destroy
    @alergy = Alergy.find(params[:id])
    @alergy.destroy

    respond_to do |format|
      format.html { redirect_to alergies_url }
      format.json { head :no_content }
    end
  end
end
