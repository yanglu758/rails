class PersonAffiliationsController < ApplicationController
  before_action :set_person_affiliation, only: %i[ show edit update destroy ]

  # GET /person_affiliations or /person_affiliations.json
  def index
    @person_affiliations = PersonAffiliation.all
  end

  # GET /person_affiliations/1 or /person_affiliations/1.json
  def show
  end

  # GET /person_affiliations/new
  def new
    @person_affiliation = PersonAffiliation.new
  end

  # GET /person_affiliations/1/edit
  def edit
  end

  # POST /person_affiliations or /person_affiliations.json
  def create
    @person_affiliation = PersonAffiliation.new(person_affiliation_params)

    respond_to do |format|
      if @person_affiliation.save
        format.html { redirect_to @person_affiliation, notice: "Person affiliation was successfully created." }
        format.json { render :show, status: :created, location: @person_affiliation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person_affiliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_affiliations/1 or /person_affiliations/1.json
  def update
    respond_to do |format|
      if @person_affiliation.update(person_affiliation_params)
        format.html { redirect_to @person_affiliation, notice: "Person affiliation was successfully updated." }
        format.json { render :show, status: :ok, location: @person_affiliation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person_affiliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_affiliations/1 or /person_affiliations/1.json
  def destroy
    @person_affiliation.destroy
    respond_to do |format|
      format.html { redirect_to person_affiliations_url, notice: "Person affiliation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_affiliation
      @person_affiliation = PersonAffiliation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_affiliation_params
      params.require(:person_affiliation).permit(:person_id, :affiliation_id)
    end
end
