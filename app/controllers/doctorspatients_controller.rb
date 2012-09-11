class DoctorspatientsController < ApplicationController
  # GET /doctorspatients
  # GET /doctorspatients.json
  def index
    @doctorspatients = Doctorspatient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctorspatients }
    end
  end

  # GET /doctorspatients/1
  # GET /doctorspatients/1.json
  def show
    @doctorspatient = Doctorspatient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctorspatient }
    end
  end

  # GET /doctorspatients/new
  # GET /doctorspatients/new.json
  def new
    @doctorspatient = Doctorspatient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctorspatient }
    end
  end

  # GET /doctorspatients/1/edit
  def edit
    @doctorspatient = Doctorspatient.find(params[:id])
  end

  # POST /doctorspatients
  # POST /doctorspatients.json
  def create
    @doctorspatient = Doctorspatient.new(params[:doctorspatient])

    respond_to do |format|
      if @doctorspatient.save
        format.html { redirect_to @doctorspatient, notice: 'Doctorspatient was successfully created.' }
        format.json { render json: @doctorspatient, status: :created, location: @doctorspatient }
      else
        format.html { render action: "new" }
        format.json { render json: @doctorspatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctorspatients/1
  # PUT /doctorspatients/1.json
  def update
    @doctorspatient = Doctorspatient.find(params[:id])

    respond_to do |format|
      if @doctorspatient.update_attributes(params[:doctorspatient])
        format.html { redirect_to @doctorspatient, notice: 'Doctorspatient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctorspatient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctorspatients/1
  # DELETE /doctorspatients/1.json
  def destroy
    @doctorspatient = Doctorspatient.find(params[:id])
    @doctorspatient.destroy

    respond_to do |format|
      format.html { redirect_to doctorspatients_url }
      format.json { head :no_content }
    end
  end
end
