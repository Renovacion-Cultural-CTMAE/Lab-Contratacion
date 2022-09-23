class CurriculumDesignProfilesController < ApplicationController
  before_action :set_curriculum_design_profile, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /curriculum_design_profiles or /curriculum_design_profiles.json
  def index
    @curriculum_design_profiles = CurriculumDesignProfile.all
    @q = CurriculumDesignProfile.ransack(params[:q])
    @curriculum_design_profiles = @q.result.includes(:curriculum_design)
  end

  # GET /curriculum_design_profiles/1 or /curriculum_design_profiles/1.json
  def show
  end

  # GET /curriculum_design_profiles/new
  def new
    @curriculum_design_profile = CurriculumDesignProfile.new
  end

  # GET /curriculum_design_profiles/1/edit
  def edit
  end

  # POST /curriculum_design_profiles or /curriculum_design_profiles.json
  def create
    @curriculum_design_profile = CurriculumDesignProfile.new(curriculum_design_profile_params)

    respond_to do |format|
      if @curriculum_design_profile.save
        format.html { redirect_to curriculum_design_profile_url(@curriculum_design_profile), notice: "Curriculum design profile was successfully created." }
        format.json { render :show, status: :created, location: @curriculum_design_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @curriculum_design_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curriculum_design_profiles/1 or /curriculum_design_profiles/1.json
  def update
    respond_to do |format|
      if @curriculum_design_profile.update(curriculum_design_profile_params)
        format.html { redirect_to curriculum_design_profile_url(@curriculum_design_profile), notice: "Curriculum design profile was successfully updated." }
        format.json { render :show, status: :ok, location: @curriculum_design_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @curriculum_design_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculum_design_profiles/1 or /curriculum_design_profiles/1.json
  def destroy
    @curriculum_design_profile.destroy

    respond_to do |format|
      format.html { redirect_to curriculum_design_profiles_url, notice: "Curriculum design profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculum_design_profile
      @curriculum_design_profile = CurriculumDesignProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curriculum_design_profile_params
      params.require(:curriculum_design_profile).permit(:codigo_diseño_curricural, :nombre_perfil, :tipos_perfiles)
    end
end
