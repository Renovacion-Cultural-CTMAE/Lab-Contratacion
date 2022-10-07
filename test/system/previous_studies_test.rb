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

    check "Contratacion acuerdo comercial" if @previous_study.contratacion_acuerdo_comercial
    check "Contratacion plan adquisiciones" if @previous_study.contratacion_plan_adquisiciones
    fill_in "Domicilio contractual", with: @previous_study.domicilio_contractual
    fill_in "Educacion", with: @previous_study.educacion
    fill_in "Experiencia", with: @previous_study.experiencia
    fill_in "Justificacion necesidad contratacion", with: @previous_study.justificacion_necesidad_contratacion
    fill_in "Justificacion valor contrato", with: @previous_study.justificacion_valor_contrato
    fill_in "Lugar", with: @previous_study.lugar
    fill_in "Nivel", with: @previous_study.nivel
    fill_in "Nombre centro", with: @previous_study.nombre_centro
    fill_in "Numero contratos", with: @previous_study.numero_contratos
    fill_in "Objeto", with: @previous_study.objeto
    fill_in "Obligaciones", with: @previous_study.obligaciones
    fill_in "Ordenador", with: @previous_study.ordenador
    fill_in "Perfil", with: @previous_study.perfil
    fill_in "Plazo", with: @previous_study.plazo
    fill_in "Supervisor", with: @previous_study.supervisor
    fill_in "Valor forma pago", with: @previous_study.valor_forma_pago
    fill_in "Valor mes", with: @previous_study.valor_mes
    fill_in "Valor total contrato", with: @previous_study.valor_total_contrato
    click_on "Create Previous study"

    assert_text "Previous study was successfully created"
    click_on "Back"
  end

  test "should update Previous study" do
    visit previous_study_url(@previous_study)
    click_on "Edit this previous study", match: :first

    check "Contratacion acuerdo comercial" if @previous_study.contratacion_acuerdo_comercial
    check "Contratacion plan adquisiciones" if @previous_study.contratacion_plan_adquisiciones
    fill_in "Domicilio contractual", with: @previous_study.domicilio_contractual
    fill_in "Educacion", with: @previous_study.educacion
    fill_in "Experiencia", with: @previous_study.experiencia
    fill_in "Justificacion necesidad contratacion", with: @previous_study.justificacion_necesidad_contratacion
    fill_in "Justificacion valor contrato", with: @previous_study.justificacion_valor_contrato
    fill_in "Lugar", with: @previous_study.lugar
    fill_in "Nivel", with: @previous_study.nivel
    fill_in "Nombre centro", with: @previous_study.nombre_centro
    fill_in "Numero contratos", with: @previous_study.numero_contratos
    fill_in "Objeto", with: @previous_study.objeto
    fill_in "Obligaciones", with: @previous_study.obligaciones
    fill_in "Ordenador", with: @previous_study.ordenador
    fill_in "Perfil", with: @previous_study.perfil
    fill_in "Plazo", with: @previous_study.plazo
    fill_in "Supervisor", with: @previous_study.supervisor
    fill_in "Valor forma pago", with: @previous_study.valor_forma_pago
    fill_in "Valor mes", with: @previous_study.valor_mes
    fill_in "Valor total contrato", with: @previous_study.valor_total_contrato
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
