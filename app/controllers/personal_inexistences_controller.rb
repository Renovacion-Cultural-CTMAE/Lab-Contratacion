class PersonalInexistencesController < ApplicationController
  before_action :set_personal_inexistence, only: %i[ show edit update destroy ]

  # GET /personal_inexistences or /personal_inexistences.json
  def index
    @personal_inexistences = PersonalInexistence.all
  end

  # GET /personal_inexistences/1 or /personal_inexistences/1.json
  def show
  end

  # GET /personal_inexistences/new
  def new
    @personal_inexistence = PersonalInexistence.new
  end

  # GET /personal_inexistences/1/edit
  def edit
  end

  # POST /personal_inexistences or /personal_inexistences.json
  def create
    @personal_inexistence = PersonalInexistence.new(personal_inexistence_params)

    respond_to do |format|
      if @personal_inexistence.save
        format.html { redirect_to personal_inexistence_url(@personal_inexistence), notice: "Personal inexistence was successfully created." }
        format.json { render :show, status: :created, location: @personal_inexistence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personal_inexistence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_inexistences/1 or /personal_inexistences/1.json
  def update
    respond_to do |format|
      if @personal_inexistence.update(personal_inexistence_params)
        format.html { redirect_to personal_inexistence_url(@personal_inexistence), notice: "Personal inexistence was successfully updated." }
        format.json { render :show, status: :ok, location: @personal_inexistence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personal_inexistence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_inexistences/1 or /personal_inexistences/1.json
  def destroy
    @personal_inexistence.destroy

    respond_to do |format|
      format.html { redirect_to personal_inexistences_url, notice: "Personal inexistence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_inexistence
      @personal_inexistence = PersonalInexistence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_inexistence_params
      params.require(:personal_inexistence).permit(:previous_study_id)
    end
end
