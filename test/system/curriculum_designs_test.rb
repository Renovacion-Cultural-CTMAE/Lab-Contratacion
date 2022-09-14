require "application_system_test_case"

class CurriculumDesignsTest < ApplicationSystemTestCase
  setup do
    @curriculum_design = curriculum_designs(:one)
  end

  test "visiting the index" do
    visit curriculum_designs_url
    assert_selector "h1", text: "Curriculum designs"
  end

  test "should create curriculum design" do
    visit curriculum_designs_url
    click_on "New curriculum design"

    fill_in "Codigo diseño curricural", with: @curriculum_design.codigo_diseño_curricural
    fill_in "Nombre diseño curricural", with: @curriculum_design.nombre_diseño_curricural
    fill_in "Numero registro calificado", with: @curriculum_design.numero_registro_calificado
    click_on "Create Curriculum design"

    assert_text "Curriculum design was successfully created"
    click_on "Back"
  end

  test "should update Curriculum design" do
    visit curriculum_design_url(@curriculum_design)
    click_on "Edit this curriculum design", match: :first

    fill_in "Codigo diseño curricural", with: @curriculum_design.codigo_diseño_curricural
    fill_in "Nombre diseño curricural", with: @curriculum_design.nombre_diseño_curricural
    fill_in "Numero registro calificado", with: @curriculum_design.numero_registro_calificado
    click_on "Update Curriculum design"

    assert_text "Curriculum design was successfully updated"
    click_on "Back"
  end

  test "should destroy Curriculum design" do
    visit curriculum_design_url(@curriculum_design)
    click_on "Destroy this curriculum design", match: :first

    assert_text "Curriculum design was successfully destroyed"
  end
end
