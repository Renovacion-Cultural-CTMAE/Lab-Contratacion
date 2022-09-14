class ContractRequirementsController < ApplicationController
  before_action :set_contract_requirement, only: %i[ show edit update destroy ]

  # GET /contract_requirements or /contract_requirements.json
  def index
    @contract_requirements = ContractRequirement.all
  end

  # GET /contract_requirements/1 or /contract_requirements/1.json
  def show
  end

  # GET /contract_requirements/new
  def new
    @contract_requirement = ContractRequirement.new
  end

  # GET /contract_requirements/1/edit
  def edit
  end

  # POST /contract_requirements or /contract_requirements.json
  def create
    @contract_requirement = ContractRequirement.new(contract_requirement_params)

    respond_to do |format|
      if @contract_requirement.save
        format.html { redirect_to contract_requirement_url(@contract_requirement), notice: "Contract requirement was successfully created." }
        format.json { render :show, status: :created, location: @contract_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contract_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_requirements/1 or /contract_requirements/1.json
  def update
    respond_to do |format|
      if @contract_requirement.update(contract_requirement_params)
        format.html { redirect_to contract_requirement_url(@contract_requirement), notice: "Contract requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @contract_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contract_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_requirements/1 or /contract_requirements/1.json
  def destroy
    @contract_requirement.destroy

    respond_to do |format|
      format.html { redirect_to contract_requirements_url, notice: "Contract requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_requirement
      @contract_requirement = ContractRequirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contract_requirement_params
      params.require(:contract_requirement).permit(:numero_contrato, :requisitos, :codigo_requisitos, :nombre_requisito)
    end
end
