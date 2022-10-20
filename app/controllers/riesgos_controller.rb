class RiesgosController < ApplicationController
  before_action :set_riesgo, only: %i[ show edit update destroy ]

  # GET /riesgos or /riesgos.json
  def index
    @riesgos = Riesgo.all
  end

  # GET /riesgos/1 or /riesgos/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf
      render pdf: "Anexo_matriz_riesgos", template: 'riesgos/report', formats:[:html],
        header: { html: { template: 'riesgos/header', formats:[:html]}},
        footer: { html: { template: 'riesgos/header', formats:[:html]}}
    end
  end

  # GET /riesgos/new
  def new
    @riesgo = Riesgo.new
  end

  # GET /riesgos/1/edit
  def edit
  end

  # POST /riesgos or /riesgos.json
  def create
    @riesgo = Riesgo.new(riesgo_params)

    respond_to do |format|
      if @riesgo.save
        format.html { redirect_to riesgo_url(@riesgo), notice: "Riesgo was successfully created." }
        format.json { render :show, status: :created, location: @riesgo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riesgos/1 or /riesgos/1.json
  def update
    respond_to do |format|
      if @riesgo.update(riesgo_params)
        format.html { redirect_to riesgo_url(@riesgo), notice: "Riesgo was successfully updated." }
        format.json { render :show, status: :ok, location: @riesgo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @riesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riesgos/1 or /riesgos/1.json
  def destroy
    @riesgo.destroy

    respond_to do |format|
      format.html { redirect_to riesgos_url, notice: "Riesgo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riesgo
      @riesgo = Riesgo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def riesgo_params
      params.require(:riesgo).permit(:descripcion_operacional1, :descripcion_operacional2, :descripcion_operacional3)
    end
end
