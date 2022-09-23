class ContractStatusesController < ApplicationController
  before_action :set_contract_status, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /contract_statuses or /contract_statuses.json
  def index
    @contract_statuses = ContractStatus.all
    @q = ContractStatus.ransack(params[:q])
    @contract_statuses = @q.result.includes(:contract)
  end

  # GET /contract_statuses/1 or /contract_statuses/1.json
  def show
  end

  # GET /contract_statuses/new
  def new
    @contract_status = ContractStatus.new
  end

  # GET /contract_statuses/1/edit
  def edit
  end

  # POST /contract_statuses or /contract_statuses.json
  def create
    @contract_status = ContractStatus.new(contract_status_params)

    respond_to do |format|
      if @contract_status.save
        format.html { redirect_to contract_status_url(@contract_status), notice: "Contract status was successfully created." }
        format.json { render :show, status: :created, location: @contract_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contract_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_statuses/1 or /contract_statuses/1.json
  def update
    respond_to do |format|
      if @contract_status.update(contract_status_params)
        format.html { redirect_to contract_status_url(@contract_status), notice: "Contract status was successfully updated." }
        format.json { render :show, status: :ok, location: @contract_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contract_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_statuses/1 or /contract_statuses/1.json
  def destroy
    @contract_status.destroy

    respond_to do |format|
      format.html { redirect_to contract_statuses_url, notice: "Contract status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_status
      @contract_status = ContractStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contract_status_params
      params.require(:contract_status).permit(:numero_contrato, :fecha_del_estado, :motivos_contrato, :contract_id)
    end
end
