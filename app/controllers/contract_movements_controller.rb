class ContractMovementsController < ApplicationController
  before_action :set_contract_movement, only: %i[ show edit update destroy ]

  # GET /contract_movements or /contract_movements.json
  def index
    @contract_movements = ContractMovement.all
  end

  # GET /contract_movements/1 or /contract_movements/1.json
  def show
  end

  # GET /contract_movements/new
  def new
    @contract_movement = ContractMovement.new
  end

  # GET /contract_movements/1/edit
  def edit
  end

  # POST /contract_movements or /contract_movements.json
  def create
    @contract_movement = ContractMovement.new(contract_movement_params)

    respond_to do |format|
      if @contract_movement.save
        format.html { redirect_to contract_movement_url(@contract_movement), notice: "Contract movement was successfully created." }
        format.json { render :show, status: :created, location: @contract_movement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contract_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_movements/1 or /contract_movements/1.json
  def update
    respond_to do |format|
      if @contract_movement.update(contract_movement_params)
        format.html { redirect_to contract_movement_url(@contract_movement), notice: "Contract movement was successfully updated." }
        format.json { render :show, status: :ok, location: @contract_movement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contract_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_movements/1 or /contract_movements/1.json
  def destroy
    @contract_movement.destroy

    respond_to do |format|
      format.html { redirect_to contract_movements_url, notice: "Contract movement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_movement
      @contract_movement = ContractMovement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contract_movement_params
      params.require(:contract_movement).permit(:numero_contrato, :numero_movimiento, :fecha_movimiento, :valor_movimiento, :saldo, :observacion, :contract_id)
    end
end
