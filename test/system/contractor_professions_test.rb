require "application_system_test_case"

class ContractorProfessionsTest < ApplicationSystemTestCase
  setup do
    @contractor_profession = contractor_professions(:one)
  end

  test "visiting the index" do
    visit contractor_professions_url
    assert_selector "h1", text: "Contractor professions"
  end

  test "should create contractor profession" do
    visit contractor_professions_url
    click_on "New contractor profession"

    fill_in "Cedula contratista", with: @contractor_profession.cedula_contratista
    fill_in "Codigo profesion", with: @contractor_profession.codigo_profesion
    fill_in "Nombre profesion", with: @contractor_profession.nombre_profesion
    click_on "Create Contractor profession"

    assert_text "Contractor profession was successfully created"
    click_on "Back"
  end

  test "should update Contractor profession" do
    visit contractor_profession_url(@contractor_profession)
    click_on "Edit this contractor profession", match: :first

    fill_in "Cedula contratista", with: @contractor_profession.cedula_contratista
    fill_in "Codigo profesion", with: @contractor_profession.codigo_profesion
    fill_in "Nombre profesion", with: @contractor_profession.nombre_profesion
    click_on "Update Contractor profession"

    assert_text "Contractor profession was successfully updated"
    click_on "Back"
  end

  test "should destroy Contractor profession" do
    visit contractor_profession_url(@contractor_profession)
    click_on "Destroy this contractor profession", match: :first

    assert_text "Contractor profession was successfully destroyed"
  end
end
