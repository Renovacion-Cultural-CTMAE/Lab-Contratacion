require "application_system_test_case"

class PreviousStudiesTest < ApplicationSystemTestCase
  setup do
    @previous_study = previous_studies(:one)
  end

  test "visiting the index" do
    visit previous_studies_url
    assert_selector "h1", text: "Previous studies"
  end

  test "should create previous study" do
    visit previous_studies_url
    click_on "New previous study"

    fill_in "Cedula contratista", with: @previous_study.cedula_contratista
    fill_in "Codigo estudios", with: @previous_study.codigo_estudios
    fill_in "Codigo profesion", with: @previous_study.codigo_profesion
    fill_in "Codigo programa", with: @previous_study.codigo_programa
    fill_in "Fecha estudios", with: @previous_study.fecha_estudios
    fill_in "Valor estudios", with: @previous_study.valor_estudios
    click_on "Create Previous study"

    assert_text "Previous study was successfully created"
    click_on "Back"
  end

  test "should update Previous study" do
    visit previous_study_url(@previous_study)
    click_on "Edit this previous study", match: :first

    fill_in "Cedula contratista", with: @previous_study.cedula_contratista
    fill_in "Codigo estudios", with: @previous_study.codigo_estudios
    fill_in "Codigo profesion", with: @previous_study.codigo_profesion
    fill_in "Codigo programa", with: @previous_study.codigo_programa
    fill_in "Fecha estudios", with: @previous_study.fecha_estudios
    fill_in "Valor estudios", with: @previous_study.valor_estudios
    click_on "Update Previous study"

    assert_text "Previous study was successfully updated"
    click_on "Back"
  end

  test "should destroy Previous study" do
    visit previous_study_url(@previous_study)
    click_on "Destroy this previous study", match: :first

    assert_text "Previous study was successfully destroyed"
  end
end
