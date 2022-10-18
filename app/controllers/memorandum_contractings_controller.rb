class MemorandumContractingsController < ApplicationController
  before_action :set_memorandum_contracting, only: %i[ show edit update destroy ]

  # GET /memorandum_contractings or /memorandum_contractings.json
  def index
    @memorandum_contractings = MemorandumContracting.all
  end

  # GET /memorandum_contractings/1 or /memorandum_contractings/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "memorando_contratacion", template: 'memorandum_contractings/report', formats:[:html],
          header: { html: { template: 'memorandum_contractings/header', formats:[:html] }},
          footer: { html: { template: 'memorandum_contractings/footer', formats:[:html] }}
      end
    end
  end

  # GET /memorandum_contractings/new
  def new
    @memorandum_contracting = MemorandumContracting.new
  end

  # GET /memorandum_contractings/1/edit
  def edit
  end

  # POST /memorandum_contractings or /memorandum_contractings.json
  def create
    @memorandum_contracting = MemorandumContracting.new(memorandum_contracting_params)

    respond_to do |format|
      if @memorandum_contracting.save
        format.html { redirect_to memorandum_contracting_url(@memorandum_contracting), notice: "Memorandum contracting was successfully created." }
        format.json { render :show, status: :created, location: @memorandum_contracting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @memorandum_contracting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memorandum_contractings/1 or /memorandum_contractings/1.json
  def update
    respond_to do |format|
      if @memorandum_contracting.update(memorandum_contracting_params)
        format.html { redirect_to memorandum_contracting_url(@memorandum_contracting), notice: "Memorandum contracting was successfully updated." }
        format.json { render :show, status: :ok, location: @memorandum_contracting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @memorandum_contracting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memorandum_contractings/1 or /memorandum_contractings/1.json
  def destroy
    @memorandum_contracting.destroy

    respond_to do |format|
      format.html { redirect_to memorandum_contractings_url, notice: "Memorandum contracting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorandum_contracting
      @memorandum_contracting = MemorandumContracting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def memorandum_contracting_params
      params.require(:memorandum_contracting).permit(:tipo_formacion, :cdp, :previous_studies_id, :proyecto, :reviso, :vob)
    end
end
