class CurriculumDesignsController < ApplicationController
  before_action :set_curriculum_design, only: %i[ show edit update destroy ]

  # GET /curriculum_designs or /curriculum_designs.json
  def index
    @curriculum_designs = CurriculumDesign.all
  end

  # GET /curriculum_designs/1 or /curriculum_designs/1.json
  def show
  end

  # GET /curriculum_designs/new
  def new
    @curriculum_design = CurriculumDesign.new
  end

  # GET /curriculum_designs/1/edit
  def edit
  end

  # POST /curriculum_designs or /curriculum_designs.json
  def create
    @curriculum_design = CurriculumDesign.new(curriculum_design_params)

    respond_to do |format|
      if @curriculum_design.save
        format.html { redirect_to curriculum_design_url(@curriculum_design), notice: "Curriculum design was successfully created." }
        format.json { render :show, status: :created, location: @curriculum_design }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @curriculum_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curriculum_designs/1 or /curriculum_designs/1.json
  def update
    respond_to do |format|
      if @curriculum_design.update(curriculum_design_params)
        format.html { redirect_to curriculum_design_url(@curriculum_design), notice: "Curriculum design was successfully updated." }
        format.json { render :show, status: :ok, location: @curriculum_design }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @curriculum_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculum_designs/1 or /curriculum_designs/1.json
  def destroy
    @curriculum_design.destroy

    respond_to do |format|
      format.html { redirect_to curriculum_designs_url, notice: "Curriculum design was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculum_design
      @curriculum_design = CurriculumDesign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curriculum_design_params
      params.require(:curriculum_design).permit(:codigo_diseño_curricural, :nombre_diseño_curricural, :numero_registro_calificado)
    end
end
