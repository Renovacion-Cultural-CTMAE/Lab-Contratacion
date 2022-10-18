class AnexoPlanContratacionsController < ApplicationController
  before_action :set_anexo_plan_contratacion, only: %i[ show edit update destroy ]

  # GET /anexo_plan_contratacions or /anexo_plan_contratacions.json
  def index
    @anexo_plan_contratacions = AnexoPlanContratacion.all
  end

  # GET /anexo_plan_contratacions/1 or /anexo_plan_contratacions/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf "anexo_plan_contratacion", template: 'anexo_plan_contratacions/report', formats:[:html],
          header: {html: {template: 'anexo_plan_contratacions/header', formats:[:html]}},
          footer: {html: {template: 'anexo_plan_contratacions/footer', formats:[:html]}}
      end
    end
  end

  # GET /anexo_plan_contratacions/new
  def new
    @anexo_plan_contratacion = AnexoPlanContratacion.new
  end

  # GET /anexo_plan_contratacions/1/edit
  def edit
  end

  # POST /anexo_plan_contratacions or /anexo_plan_contratacions.json
  def create
    @anexo_plan_contratacion = AnexoPlanContratacion.new(anexo_plan_contratacion_params)

    respond_to do |format|
      if @anexo_plan_contratacion.save
        format.html { redirect_to anexo_plan_contratacion_url(@anexo_plan_contratacion), notice: "Anexo plan contratacion was successfully created." }
        format.json { render :show, status: :created, location: @anexo_plan_contratacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anexo_plan_contratacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anexo_plan_contratacions/1 or /anexo_plan_contratacions/1.json
  def update
    respond_to do |format|
      if @anexo_plan_contratacion.update(anexo_plan_contratacion_params)
        format.html { redirect_to anexo_plan_contratacion_url(@anexo_plan_contratacion), notice: "Anexo plan contratacion was successfully updated." }
        format.json { render :show, status: :ok, location: @anexo_plan_contratacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anexo_plan_contratacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anexo_plan_contratacions/1 or /anexo_plan_contratacions/1.json
  def destroy
    @anexo_plan_contratacion.destroy

    respond_to do |format|
      format.html { redirect_to anexo_plan_contratacions_url, notice: "Anexo plan contratacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anexo_plan_contratacion
      @anexo_plan_contratacion = AnexoPlanContratacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anexo_plan_contratacion_params
      params.require(:anexo_plan_contratacion).permit(:periodo, :elaborado_por, :telefono, :duracion_programa, :observaciones)
    end
end
