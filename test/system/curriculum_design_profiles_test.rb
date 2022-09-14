require "application_system_test_case"

class CurriculumDesignProfilesTest < ApplicationSystemTestCase
  setup do
    @curriculum_design_profile = curriculum_design_profiles(:one)
  end

  test "visiting the index" do
    visit curriculum_design_profiles_url
    assert_selector "h1", text: "Curriculum design profiles"
  end

  test "should create curriculum design profile" do
    visit curriculum_design_profiles_url
    click_on "New curriculum design profile"

    fill_in "Codigo diseño curricural", with: @curriculum_design_profile.codigo_diseño_curricural
    fill_in "Nombre perfil", with: @curriculum_design_profile.nombre_perfil
    fill_in "Tipos perfiles", with: @curriculum_design_profile.tipos_perfiles
    click_on "Create Curriculum design profile"

    assert_text "Curriculum design profile was successfully created"
    click_on "Back"
  end

  test "should update Curriculum design profile" do
    visit curriculum_design_profile_url(@curriculum_design_profile)
    click_on "Edit this curriculum design profile", match: :first

    fill_in "Codigo diseño curricural", with: @curriculum_design_profile.codigo_diseño_curricural
    fill_in "Nombre perfil", with: @curriculum_design_profile.nombre_perfil
    fill_in "Tipos perfiles", with: @curriculum_design_profile.tipos_perfiles
    click_on "Update Curriculum design profile"

    assert_text "Curriculum design profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Curriculum design profile" do
    visit curriculum_design_profile_url(@curriculum_design_profile)
    click_on "Destroy this curriculum design profile", match: :first

    assert_text "Curriculum design profile was successfully destroyed"
  end
end
