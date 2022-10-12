class EqualObjectsController < ApplicationController
  before_action :set_equal_object, only: %i[ show edit update destroy ]

  # GET /equal_objects or /equal_objects.json
  def index
    @equal_objects = EqualObject.all
  end

  # GET /equal_objects/1 or /equal_objects/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Certificado objetos iguales", template: 'equal_objects/report', formats:[:html],
          header:{ html: { template: 'equal_objects/header', formats:[:html]}}
      end
      end
  end

  # GET /equal_objects/new
  def new
    @equal_object = EqualObject.new
  end

  # GET /equal_objects/1/edit
  def edit
  end

  # POST /equal_objects or /equal_objects.json
  def create
    @equal_object = EqualObject.new(equal_object_params)

    respond_to do |format|
      if @equal_object.save
        format.html { redirect_to equal_object_url(@equal_object), notice: "Equal object was successfully created." }
        format.json { render :show, status: :created, location: @equal_object }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @equal_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equal_objects/1 or /equal_objects/1.json
  def update
    respond_to do |format|
      if @equal_object.update(equal_object_params)
        format.html { redirect_to equal_object_url(@equal_object), notice: "Equal object was successfully updated." }
        format.json { render :show, status: :ok, location: @equal_object }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @equal_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equal_objects/1 or /equal_objects/1.json
  def destroy
    @equal_object.destroy

    respond_to do |format|
      format.html { redirect_to equal_objects_url, notice: "Equal object was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equal_object
      @equal_object = EqualObject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equal_object_params
      params.require(:equal_object).permit(:previous_study_id)
    end
end
