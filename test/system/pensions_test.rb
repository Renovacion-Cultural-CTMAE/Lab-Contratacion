require "application_system_test_case"

class PensionsTest < ApplicationSystemTestCase
  setup do
    @pension = pensions(:one)
  end

  test "visiting the index" do
    visit pensions_url
    assert_selector "h1", text: "Pensions"
  end

  test "should create pension" do
    visit pensions_url
    click_on "New pension"

    fill_in "Cedula contratista", with: @pension.cedula_contratista
    fill_in "Ciudad de la entidad", with: @pension.ciudad_de_la_entidad
    fill_in "Correo de la entidad", with: @pension.correo_de_la_entidad
    fill_in "Nit de la entidad", with: @pension.nit_de_la_entidad
    fill_in "Nombre la entidad", with: @pension.nombre_la_entidad
    fill_in "Telefono de la entidad", with: @pension.telefono_de_la_entidad
    click_on "Create Pension"

    assert_text "Pension was successfully created"
    click_on "Back"
  end

  test "should update Pension" do
    visit pension_url(@pension)
    click_on "Edit this pension", match: :first

    fill_in "Cedula contratista", with: @pension.cedula_contratista
    fill_in "Ciudad de la entidad", with: @pension.ciudad_de_la_entidad
    fill_in "Correo de la entidad", with: @pension.correo_de_la_entidad
    fill_in "Nit de la entidad", with: @pension.nit_de_la_entidad
    fill_in "Nombre la entidad", with: @pension.nombre_la_entidad
    fill_in "Telefono de la entidad", with: @pension.telefono_de_la_entidad
    click_on "Update Pension"

    assert_text "Pension was successfully updated"
    click_on "Back"
  end

  test "should destroy Pension" do
    visit pension_url(@pension)
    click_on "Destroy this pension", match: :first

    assert_text "Pension was successfully destroyed"
  end
end
