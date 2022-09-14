require "test_helper"

class CurriculumDesignProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curriculum_design_profile = curriculum_design_profiles(:one)
  end

  test "should get index" do
    get curriculum_design_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_curriculum_design_profile_url
    assert_response :success
  end

  test "should create curriculum_design_profile" do
    assert_difference("CurriculumDesignProfile.count") do
      post curriculum_design_profiles_url, params: { curriculum_design_profile: { codigo_diseño_curricural: @curriculum_design_profile.codigo_diseño_curricural, nombre_perfil: @curriculum_design_profile.nombre_perfil, tipos_perfiles: @curriculum_design_profile.tipos_perfiles } }
    end

    assert_redirected_to curriculum_design_profile_url(CurriculumDesignProfile.last)
  end

  test "should show curriculum_design_profile" do
    get curriculum_design_profile_url(@curriculum_design_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_curriculum_design_profile_url(@curriculum_design_profile)
    assert_response :success
  end

  test "should update curriculum_design_profile" do
    patch curriculum_design_profile_url(@curriculum_design_profile), params: { curriculum_design_profile: { codigo_diseño_curricural: @curriculum_design_profile.codigo_diseño_curricural, nombre_perfil: @curriculum_design_profile.nombre_perfil, tipos_perfiles: @curriculum_design_profile.tipos_perfiles } }
    assert_redirected_to curriculum_design_profile_url(@curriculum_design_profile)
  end

  test "should destroy curriculum_design_profile" do
    assert_difference("CurriculumDesignProfile.count", -1) do
      delete curriculum_design_profile_url(@curriculum_design_profile)
    end

    assert_redirected_to curriculum_design_profiles_url
  end
end
