class ContractorProfessionsController < ApplicationController
  before_action :set_contractor_profession, only: %i[ show edit update destroy ]

  # GET /contractor_professions or /contractor_professions.json
  def index
    @contractor_professions = ContractorProfession.all
  end

  # GET /contractor_professions/1 or /contractor_professions/1.json
  def show
  end

  # GET /contractor_professions/new
  def new
    @contractor_profession = ContractorProfession.new
  end

  # GET /contractor_professions/1/edit
  def edit
  end

  # POST /contractor_professions or /contractor_professions.json
  def create
    @contractor_profession = ContractorProfession.new(contractor_profession_params)

    respond_to do |format|
      if @contractor_profession.save
        format.html { redirect_to contractor_profession_url(@contractor_profession), notice: "Contractor profession was successfully created." }
        format.json { render :show, status: :created, location: @contractor_profession }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contractor_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractor_professions/1 or /contractor_professions/1.json
  def update
    respond_to do |format|
      if @contractor_profession.update(contractor_profession_params)
        format.html { redirect_to contractor_profession_url(@contractor_profession), notice: "Contractor profession was successfully updated." }
        format.json { render :show, status: :ok, location: @contractor_profession }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contractor_profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractor_professions/1 or /contractor_professions/1.json
  def destroy
    @contractor_profession.destroy

    respond_to do |format|
      format.html { redirect_to contractor_professions_url, notice: "Contractor profession was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractor_profession
      @contractor_profession = ContractorProfession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contractor_profession_params
      params.require(:contractor_profession).permit(:cedula_contratista, :codigo_profesion, :nombre_profesion, :contractor_id)
    end
end
