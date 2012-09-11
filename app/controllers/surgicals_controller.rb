class SurgicalsController < ApplicationController
  # GET /surgicals
  # GET /surgicals.json
  def index
    @surgicals = Surgical.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @surgicals }
    end
  end

  # GET /surgicals/1
  # GET /surgicals/1.json
  def show
    @surgical = Surgical.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @surgical }
    end
  end

  # GET /surgicals/new
  # GET /surgicals/new.json
  def new
    @surgical = Surgical.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @surgical }
    end
  end

  # GET /surgicals/1/edit
  def edit
    @surgical = Surgical.find(params[:id])
  end

  # POST /surgicals
  # POST /surgicals.json
  def create
    @surgical = Surgical.new(params[:surgical])

    respond_to do |format|
      if @surgical.save
        format.html { redirect_to @surgical, notice: 'Surgical was successfully created.' }
        format.json { render json: @surgical, status: :created, location: @surgical }
      else
        format.html { render action: "new" }
        format.json { render json: @surgical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /surgicals/1
  # PUT /surgicals/1.json
  def update
    @surgical = Surgical.find(params[:id])

    respond_to do |format|
      if @surgical.update_attributes(params[:surgical])
        format.html { redirect_to @surgical, notice: 'Surgical was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @surgical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgicals/1
  # DELETE /surgicals/1.json
  def destroy
    @surgical = Surgical.find(params[:id])
    @surgical.destroy

    respond_to do |format|
      format.html { redirect_to surgicals_url }
      format.json { head :no_content }
    end
  end
end
