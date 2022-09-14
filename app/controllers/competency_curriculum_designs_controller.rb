class CompetencyCurriculumDesignsController < ApplicationController
  before_action :set_competency_curriculum_design, only: %i[ show edit update destroy ]

  # GET /competency_curriculum_designs or /competency_curriculum_designs.json
  def index
    @competency_curriculum_designs = CompetencyCurriculumDesign.all
  end

  # GET /competency_curriculum_designs/1 or /competency_curriculum_designs/1.json
  def show
  end

  # GET /competency_curriculum_designs/new
  def new
    @competency_curriculum_design = CompetencyCurriculumDesign.new
  end

  # GET /competency_curriculum_designs/1/edit
  def edit
  end

  # POST /competency_curriculum_designs or /competency_curriculum_designs.json
  def create
    @competency_curriculum_design = CompetencyCurriculumDesign.new(competency_curriculum_design_params)

    respond_to do |format|
      if @competency_curriculum_design.save
        format.html { redirect_to competency_curriculum_design_url(@competency_curriculum_design), notice: "Competency curriculum design was successfully created." }
        format.json { render :show, status: :created, location: @competency_curriculum_design }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @competency_curriculum_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competency_curriculum_designs/1 or /competency_curriculum_designs/1.json
  def update
    respond_to do |format|
      if @competency_curriculum_design.update(competency_curriculum_design_params)
        format.html { redirect_to competency_curriculum_design_url(@competency_curriculum_design), notice: "Competency curriculum design was successfully updated." }
        format.json { render :show, status: :ok, location: @competency_curriculum_design }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @competency_curriculum_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competency_curriculum_designs/1 or /competency_curriculum_designs/1.json
  def destroy
    @competency_curriculum_design.destroy

    respond_to do |format|
      format.html { redirect_to competency_curriculum_designs_url, notice: "Competency curriculum design was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competency_curriculum_design
      @competency_curriculum_design = CompetencyCurriculumDesign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def competency_curriculum_design_params
      params.require(:competency_curriculum_design).permit(:numero_competencia, :codigo_diseño_curricural)
    end
end
