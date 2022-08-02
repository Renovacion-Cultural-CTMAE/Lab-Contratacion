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

    fill_in "Apellido", with: @contractor.apellido
    fill_in "Cedula contratista", with: @contractor.cedula_contratista
    fill_in "Edad", with: @contractor.edad
    fill_in "Fecha de nacimiento", with: @contractor.fecha_de_nacimiento
    fill_in "Fecha expedicion cedula", with: @contractor.fecha_expedicion_cedula
    fill_in "Lugar expedicion cedula", with: @contractor.lugar_expedicion_cedula
    fill_in "Municipio de recidencia", with: @contractor.municipio_de_recidencia
    fill_in "Nombre", with: @contractor.nombre
    fill_in "Numero de libreta militar", with: @contractor.numero_de_libreta_militar
    fill_in "Sexo", with: @contractor.sexo
    click_on "Create Contractor"

    assert_text "Contractor was successfully created"
    click_on "Back"
  end

  test "should update Contractor" do
    visit contractor_url(@contractor)
    click_on "Edit this contractor", match: :first

    fill_in "Apellido", with: @contractor.apellido
    fill_in "Cedula contratista", with: @contractor.cedula_contratista
    fill_in "Edad", with: @contractor.edad
    fill_in "Fecha de nacimiento", with: @contractor.fecha_de_nacimiento
    fill_in "Fecha expedicion cedula", with: @contractor.fecha_expedicion_cedula
    fill_in "Lugar expedicion cedula", with: @contractor.lugar_expedicion_cedula
    fill_in "Municipio de recidencia", with: @contractor.municipio_de_recidencia
    fill_in "Nombre", with: @contractor.nombre
    fill_in "Numero de libreta militar", with: @contractor.numero_de_libreta_militar
    fill_in "Sexo", with: @contractor.sexo
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
