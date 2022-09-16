class ContractSupervisorsController < ApplicationController
  before_action :set_contract_supervisor, only: %i[ show edit update destroy ]

  # GET /contract_supervisors or /contract_supervisors.json
  def index
    @contract_supervisors = ContractSupervisor.all
  end

  # GET /contract_supervisors/1 or /contract_supervisors/1.json
  def show
  end

  # GET /contract_supervisors/new
  def new
    @contract_supervisor = ContractSupervisor.new
  end

  # GET /contract_supervisors/1/edit
  def edit
  end

  # POST /contract_supervisors or /contract_supervisors.json
  def create
    @contract_supervisor = ContractSupervisor.new(contract_supervisor_params)

    respond_to do |format|
      if @contract_supervisor.save
        format.html { redirect_to contract_supervisor_url(@contract_supervisor), notice: "Contract supervisor was successfully created." }
        format.json { render :show, status: :created, location: @contract_supervisor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contract_supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_supervisors/1 or /contract_supervisors/1.json
  def update
    respond_to do |format|
      if @contract_supervisor.update(contract_supervisor_params)
        format.html { redirect_to contract_supervisor_url(@contract_supervisor), notice: "Contract supervisor was successfully updated." }
        format.json { render :show, status: :ok, location: @contract_supervisor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contract_supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_supervisors/1 or /contract_supervisors/1.json
  def destroy
    @contract_supervisor.destroy

    respond_to do |format|
      format.html { redirect_to contract_supervisors_url, notice: "Contract supervisor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_supervisor
      @contract_supervisor = ContractSupervisor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contract_supervisor_params
      params.require(:contract_supervisor).permit(:cedula_supervisor, :numero_contrato, :fecha_inicio_supervicion, :cedula_contratista, :contract_id)
    end
end
