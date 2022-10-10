require "application_system_test_case"

class ContractorsTest < ApplicationSystemTestCase
  setup do
    @contractor = contractors(:one)
  end

  test "visiting the index" do
    visit contractors_url
    assert_selector "h1", text: "Contractors"
  end

  test "should create contractor" do
    visit contractors_url
    click_on "New contractor"

    fill_in "Cedula contratista", with: @contractor.cedula_contratista
    fill_in "Modalidad seleccion", with: @contractor.modalidad_seleccion
    fill_in "No año", with: @contractor.no_año
    fill_in "Nombre contratista", with: @contractor.nombre_contratista
    fill_in "Objeto contrato", with: @contractor.objeto_contrato
    fill_in "Plazo", with: @contractor.plazo
    fill_in "Previous study", with: @contractor.previous_study_id
    fill_in "Valor forma pago", with: @contractor.valor_forma_pago
    click_on "Create Contractor"

    assert_text "Contractor was successfully created"
    click_on "Back"
  end

  test "should update Contractor" do
    visit contractor_url(@contractor)
    click_on "Edit this contractor", match: :first

    fill_in "Cedula contratista", with: @contractor.cedula_contratista
    fill_in "Modalidad seleccion", with: @contractor.modalidad_seleccion
    fill_in "No año", with: @contractor.no_año
    fill_in "Nombre contratista", with: @contractor.nombre_contratista
    fill_in "Objeto contrato", with: @contractor.objeto_contrato
    fill_in "Plazo", with: @contractor.plazo
    fill_in "Previous study", with: @contractor.previous_study_id
    fill_in "Valor forma pago", with: @contractor.valor_forma_pago
    click_on "Update Contractor"

    assert_text "Contractor was successfully updated"
    click_on "Back"
  end

  test "should destroy Contractor" do
    visit contractor_url(@contractor)
    click_on "Destroy this contractor", match: :first

    assert_text "Contractor was successfully destroyed"
  end
end
