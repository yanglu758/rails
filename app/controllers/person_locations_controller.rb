class PersonLocationsController < ApplicationController
  before_action :set_person_location, only: %i[ show edit update destroy ]

  # GET /person_locations or /person_locations.json
  def index
    @person_locations = PersonLocation.all
  end

  # GET /person_locations/1 or /person_locations/1.json
  def show
  end

  # GET /person_locations/new
  def new
    @person_location = PersonLocation.new
  end

  # GET /person_locations/1/edit
  def edit
  end

  # POST /person_locations or /person_locations.json
  def create
    @person_location = PersonLocation.new(person_location_params)

    respond_to do |format|
      if @person_location.save
        format.html { redirect_to @person_location, notice: "Person location was successfully created." }
        format.json { render :show, status: :created, location: @person_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_locations/1 or /person_locations/1.json
  def update
    respond_to do |format|
      if @person_location.update(person_location_params)
        format.html { redirect_to @person_location, notice: "Person location was successfully updated." }
        format.json { render :show, status: :ok, location: @person_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_locations/1 or /person_locations/1.json
  def destroy
    @person_location.destroy
    respond_to do |format|
      format.html { redirect_to person_locations_url, notice: "Person location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_location
      @person_location = PersonLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_location_params
      params.require(:person_location).permit(:location_id, :person_id)
    end
end
