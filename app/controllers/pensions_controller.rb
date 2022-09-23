class PensionsController < ApplicationController
  before_action :set_pension, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /pensions or /pensions.json
  def index
    @pensions = Pension.all
    @q = Pension.ransack(params[:q])
    @pensions = @q.result.includes(:contractor)
  end

  # GET /pensions/1 or /pensions/1.json
  def show
  end

  # GET /pensions/new
  def new
    @pension = Pension.new
  end

  # GET /pensions/1/edit
  def edit
  end

  # POST /pensions or /pensions.json
  def create
    @pension = Pension.new(pension_params)

    respond_to do |format|
      if @pension.save
        format.html { redirect_to pension_url(@pension), notice: "Pension was successfully created." }
        format.json { render :show, status: :created, location: @pension }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pensions/1 or /pensions/1.json
  def update
    respond_to do |format|
      if @pension.update(pension_params)
        format.html { redirect_to pension_url(@pension), notice: "Pension was successfully updated." }
        format.json { render :show, status: :ok, location: @pension }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pensions/1 or /pensions/1.json
  def destroy
    @pension.destroy

    respond_to do |format|
      format.html { redirect_to pensions_url, notice: "Pension was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pension
      @pension = Pension.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pension_params
      params.require(:pension).permit(:cedula_contratista, :nit_de_la_entidad, :nombre_la_entidad, :telefono_de_la_entidad, :ciudad_de_la_entidad, :correo_de_la_entidad, :contractor_id)
    end
end
