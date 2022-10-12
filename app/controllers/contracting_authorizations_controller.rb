class ContractingAuthorizationsController < ApplicationController
  before_action :set_contracting_authorization, only: %i[ show edit update destroy ]

  # GET /contracting_authorizations or /contracting_authorizations.json
  def index
    @contracting_authorizations = ContractingAuthorization.all
  end

  # GET /contracting_authorizations/1 or /contracting_authorizations/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Autorizacion_contratacion", template: 'contracting_authorizations/report', formats:[:html],
          header: { html: { template: 'contracting_authorizations/header', formats:[:html]}}
      end
    end
  end

  # GET /contracting_authorizations/new
  def new
    @contracting_authorization = ContractingAuthorization.new
  end

  # GET /contracting_authorizations/1/edit
  def edit
  end

  # POST /contracting_authorizations or /contracting_authorizations.json
  def create
    @contracting_authorization = ContractingAuthorization.new(contracting_authorization_params)

    respond_to do |format|
      if @contracting_authorization.save
        format.html { redirect_to contracting_authorization_url(@contracting_authorization), notice: "Contracting authorization was successfully created." }
        format.json { render :show, status: :created, location: @contracting_authorization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contracting_authorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracting_authorizations/1 or /contracting_authorizations/1.json
  def update
    respond_to do |format|
      if @contracting_authorization.update(contracting_authorization_params)
        format.html { redirect_to contracting_authorization_url(@contracting_authorization), notice: "Contracting authorization was successfully updated." }
        format.json { render :show, status: :ok, location: @contracting_authorization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contracting_authorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracting_authorizations/1 or /contracting_authorizations/1.json
  def destroy
    @contracting_authorization.destroy

    respond_to do |format|
      format.html { redirect_to contracting_authorizations_url, notice: "Contracting authorization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contracting_authorization
      @contracting_authorization = ContractingAuthorization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contracting_authorization_params
      params.require(:contracting_authorization).permit(:cdp, :rubro, :radicado_nis, :previous_study_id)
    end
end
