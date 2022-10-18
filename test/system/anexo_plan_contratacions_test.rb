require "application_system_test_case"

class AnexoPlanContratacionsTest < ApplicationSystemTestCase
  setup do
    @anexo_plan_contratacion = anexo_plan_contratacions(:one)
  end

  test "visiting the index" do
    visit anexo_plan_contratacions_url
    assert_selector "h1", text: "Anexo plan contratacions"
  end

  test "should create anexo plan contratacion" do
    visit anexo_plan_contratacions_url
    click_on "New anexo plan contratacion"

    fill_in "Duracion programa", with: @anexo_plan_contratacion.duracion_programa
    fill_in "Elaborado por", with: @anexo_plan_contratacion.elaborado_por
    fill_in "Observaciones", with: @anexo_plan_contratacion.observaciones
    fill_in "Periodo", with: @anexo_plan_contratacion.periodo
    fill_in "Telefono", with: @anexo_plan_contratacion.telefono
    click_on "Create Anexo plan contratacion"

    assert_text "Anexo plan contratacion was successfully created"
    click_on "Back"
  end

  test "should update Anexo plan contratacion" do
    visit anexo_plan_contratacion_url(@anexo_plan_contratacion)
    click_on "Edit this anexo plan contratacion", match: :first

    fill_in "Duracion programa", with: @anexo_plan_contratacion.duracion_programa
    fill_in "Elaborado por", with: @anexo_plan_contratacion.elaborado_por
    fill_in "Observaciones", with: @anexo_plan_contratacion.observaciones
    fill_in "Periodo", with: @anexo_plan_contratacion.periodo
    fill_in "Telefono", with: @anexo_plan_contratacion.telefono
    click_on "Update Anexo plan contratacion"

    assert_text "Anexo plan contratacion was successfully updated"
    click_on "Back"
  end

  test "should destroy Anexo plan contratacion" do
    visit anexo_plan_contratacion_url(@anexo_plan_contratacion)
    click_on "Destroy this anexo plan contratacion", match: :first

    assert_text "Anexo plan contratacion was successfully destroyed"
  end
end
