require "application_system_test_case"

class CompetencyCurriculumDesignsTest < ApplicationSystemTestCase
  setup do
    @competency_curriculum_design = competency_curriculum_designs(:one)
  end

  test "visiting the index" do
    visit competency_curriculum_designs_url
    assert_selector "h1", text: "Competency curriculum designs"
  end

  test "should create competency curriculum design" do
    visit competency_curriculum_designs_url
    click_on "New competency curriculum design"

    fill_in "Codigo diseño curricural", with: @competency_curriculum_design.codigo_diseño_curricural
    fill_in "Numero competencia", with: @competency_curriculum_design.numero_competencia
    click_on "Create Competency curriculum design"

    assert_text "Competency curriculum design was successfully created"
    click_on "Back"
  end

  test "should update Competency curriculum design" do
    visit competency_curriculum_design_url(@competency_curriculum_design)
    click_on "Edit this competency curriculum design", match: :first

    fill_in "Codigo diseño curricural", with: @competency_curriculum_design.codigo_diseño_curricural
    fill_in "Numero competencia", with: @competency_curriculum_design.numero_competencia
    click_on "Update Competency curriculum design"

    assert_text "Competency curriculum design was successfully updated"
    click_on "Back"
  end

  test "should destroy Competency curriculum design" do
    visit competency_curriculum_design_url(@competency_curriculum_design)
    click_on "Destroy this competency curriculum design", match: :first

    assert_text "Competency curriculum design was successfully destroyed"
  end
end
