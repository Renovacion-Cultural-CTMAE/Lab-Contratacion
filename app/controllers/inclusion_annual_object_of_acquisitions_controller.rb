class InclusionAnnualObjectOfAcquisitionsController < ApplicationController
  before_action :set_inclusion_annual_object_of_acquisition, only: %i[ show edit update destroy ]

  # GET /inclusion_annual_object_of_acquisitions or /inclusion_annual_object_of_acquisitions.json
  def index
    @inclusion_annual_object_of_acquisitions = InclusionAnnualObjectOfAcquisition.all
  end

  # GET /inclusion_annual_object_of_acquisitions/1 or /inclusion_annual_object_of_acquisitions/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf:"Certificado de inclusion_de_objeto_plan_anual_adquisiciones", template: 'inclusion_annual_object_of_acquisitions/report', formats:[:html],
        header: { html: { template: 'inclusion_annual_object_of_acquisitions/header', formats:[:html] }},
        footer: { html: { template: 'inclusion_annual_object_of_acquisitions/footer', formats:[:html] }}
      end
    end
  end

  # GET /inclusion_annual_object_of_acquisitions/new
  def new
    @inclusion_annual_object_of_acquisition = InclusionAnnualObjectOfAcquisition.new
  end

  # GET /inclusion_annual_object_of_acquisitions/1/edit
  def edit
  end

  # POST /inclusion_annual_object_of_acquisitions or /inclusion_annual_object_of_acquisitions.json
  def create
    @inclusion_annual_object_of_acquisition = InclusionAnnualObjectOfAcquisition.new(inclusion_annual_object_of_acquisition_params)

    respond_to do |format|
      if @inclusion_annual_object_of_acquisition.save
        format.html { redirect_to inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition), notice: "Inclusion annual object of acquisition was successfully created." }
        format.json { render :show, status: :created, location: @inclusion_annual_object_of_acquisition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inclusion_annual_object_of_acquisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inclusion_annual_object_of_acquisitions/1 or /inclusion_annual_object_of_acquisitions/1.json
  def update
    respond_to do |format|
      if @inclusion_annual_object_of_acquisition.update(inclusion_annual_object_of_acquisition_params)
        format.html { redirect_to inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition), notice: "Inclusion annual object of acquisition was successfully updated." }
        format.json { render :show, status: :ok, location: @inclusion_annual_object_of_acquisition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inclusion_annual_object_of_acquisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inclusion_annual_object_of_acquisitions/1 or /inclusion_annual_object_of_acquisitions/1.json
  def destroy
    @inclusion_annual_object_of_acquisition.destroy

    respond_to do |format|
      format.html { redirect_to inclusion_annual_object_of_acquisitions_url, notice: "Inclusion annual object of acquisition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inclusion_annual_object_of_acquisition
      @inclusion_annual_object_of_acquisition = InclusionAnnualObjectOfAcquisition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inclusion_annual_object_of_acquisition_params
      params.require(:inclusion_annual_object_of_acquisition).permit(:año, :fecha_constancia, :proyecto, :reviso, :image)
    end
end
