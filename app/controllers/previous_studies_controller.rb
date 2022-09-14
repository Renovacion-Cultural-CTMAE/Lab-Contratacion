class PreviousStudiesController < ApplicationController
  before_action :set_previous_study, only: %i[ show edit update destroy ]

  # GET /previous_studies or /previous_studies.json
  def index
    @previous_studies = PreviousStudy.all
  end

  # GET /previous_studies/1 or /previous_studies/1.json
  def show
  end

  # GET /previous_studies/new
  def new
    @previous_study = PreviousStudy.new
  end

  # GET /previous_studies/1/edit
  def edit
  end

  # POST /previous_studies or /previous_studies.json
  def create
    @previous_study = PreviousStudy.new(previous_study_params)

    respond_to do |format|
      if @previous_study.save
        format.html { redirect_to previous_study_url(@previous_study), notice: "Previous study was successfully created." }
        format.json { render :show, status: :created, location: @previous_study }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @previous_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /previous_studies/1 or /previous_studies/1.json
  def update
    respond_to do |format|
      if @previous_study.update(previous_study_params)
        format.html { redirect_to previous_study_url(@previous_study), notice: "Previous study was successfully updated." }
        format.json { render :show, status: :ok, location: @previous_study }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @previous_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /previous_studies/1 or /previous_studies/1.json
  def destroy
    @previous_study.destroy

    respond_to do |format|
      format.html { redirect_to previous_studies_url, notice: "Previous study was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_previous_study
      @previous_study = PreviousStudy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def previous_study_params
      params.require(:previous_study).permit(:codigo_estudios, :fecha_estudios, :valor_estudios, :codigo_programa, :codigo_profesion, :cedula_contratista)
    end
end
