class InclusionObjectAcqusController < ApplicationController
  before_action :set_inclusion_object_acqu, only: %i[ show edit update destroy ]

  # GET /inclusion_object_acqus or /inclusion_object_acqus.json
  def index
    @inclusion_object_acqus = InclusionObjectAcqu.all
  end

  # GET /inclusion_object_acqus/1 or /inclusion_object_acqus/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf "certificado_de_inclusion_de_objeto_en_el_plan_de_adquisiciones", template: 'inclusion_object_acqus/report', formats:[:html],
          header:{ html: { template: 'inclusion_object_acqus/header', formats:[:html] }},
          footer:{ html: { template: 'inclusion_object_acqus/footer', formats:[:html] }}
      end
    end
  end

  # GET /inclusion_object_acqus/new
  def new
    @inclusion_object_acqu = InclusionObjectAcqu.new
  end

  # GET /inclusion_object_acqus/1/edit
  def edit
  end

  # POST /inclusion_object_acqus or /inclusion_object_acqus.json
  def create
    @inclusion_object_acqu = InclusionObjectAcqu.new(inclusion_object_acqu_params)

    respond_to do |format|
      if @inclusion_object_acqu.save
        format.html { redirect_to inclusion_object_acqu_url(@inclusion_object_acqu), notice: "Inclusion object acqu was successfully created." }
        format.json { render :show, status: :created, location: @inclusion_object_acqu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inclusion_object_acqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inclusion_object_acqus/1 or /inclusion_object_acqus/1.json
  def update
    respond_to do |format|
      if @inclusion_object_acqu.update(inclusion_object_acqu_params)
        format.html { redirect_to inclusion_object_acqu_url(@inclusion_object_acqu), notice: "Inclusion object acqu was successfully updated." }
        format.json { render :show, status: :ok, location: @inclusion_object_acqu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inclusion_object_acqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inclusion_object_acqus/1 or /inclusion_object_acqus/1.json
  def destroy
    @inclusion_object_acqu.destroy

    respond_to do |format|
      format.html { redirect_to inclusion_object_acqus_url, notice: "Inclusion object acqu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inclusion_object_acqu
      @inclusion_object_acqu = InclusionObjectAcqu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inclusion_object_acqu_params
      params.require(:inclusion_object_acqu).permit(:año, :fecha_constancia, :proyecto, :reviso, :previous_study_id, :image)
    end
end
