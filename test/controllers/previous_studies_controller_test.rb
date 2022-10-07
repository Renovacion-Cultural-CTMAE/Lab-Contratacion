require "test_helper"

class PreviousStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @previous_study = previous_studies(:one)
  end

  test "should get index" do
    get previous_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_previous_study_url
    assert_response :success
  end

  test "should create previous_study" do
    assert_difference("PreviousStudy.count") do
      post previous_studies_url, params: { previous_study: { contratacion_acuerdo_comercial: @previous_study.contratacion_acuerdo_comercial, contratacion_plan_adquisiciones: @previous_study.contratacion_plan_adquisiciones, domicilio_contractual: @previous_study.domicilio_contractual, educacion: @previous_study.educacion, experiencia: @previous_study.experiencia, justificacion_necesidad_contratacion: @previous_study.justificacion_necesidad_contratacion, justificacion_valor_contrato: @previous_study.justificacion_valor_contrato, lugar: @previous_study.lugar, nivel: @previous_study.nivel, nombre_centro: @previous_study.nombre_centro, numero_contratos: @previous_study.numero_contratos, objeto: @previous_study.objeto, obligaciones: @previous_study.obligaciones, ordenador: @previous_study.ordenador, perfil: @previous_study.perfil, plazo: @previous_study.plazo, supervisor: @previous_study.supervisor, valor_forma_pago: @previous_study.valor_forma_pago, valor_mes: @previous_study.valor_mes, valor_total_contrato: @previous_study.valor_total_contrato } }
    end

    assert_redirected_to previous_study_url(PreviousStudy.last)
  end

  test "should show previous_study" do
    get previous_study_url(@previous_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_previous_study_url(@previous_study)
    assert_response :success
  end

  test "should update previous_study" do
    patch previous_study_url(@previous_study), params: { previous_study: { contratacion_acuerdo_comercial: @previous_study.contratacion_acuerdo_comercial, contratacion_plan_adquisiciones: @previous_study.contratacion_plan_adquisiciones, domicilio_contractual: @previous_study.domicilio_contractual, educacion: @previous_study.educacion, experiencia: @previous_study.experiencia, justificacion_necesidad_contratacion: @previous_study.justificacion_necesidad_contratacion, justificacion_valor_contrato: @previous_study.justificacion_valor_contrato, lugar: @previous_study.lugar, nivel: @previous_study.nivel, nombre_centro: @previous_study.nombre_centro, numero_contratos: @previous_study.numero_contratos, objeto: @previous_study.objeto, obligaciones: @previous_study.obligaciones, ordenador: @previous_study.ordenador, perfil: @previous_study.perfil, plazo: @previous_study.plazo, supervisor: @previous_study.supervisor, valor_forma_pago: @previous_study.valor_forma_pago, valor_mes: @previous_study.valor_mes, valor_total_contrato: @previous_study.valor_total_contrato } }
    assert_redirected_to previous_study_url(@previous_study)
  end

  test "should destroy previous_study" do
    assert_difference("PreviousStudy.count", -1) do
      delete previous_study_url(@previous_study)
    end

    assert_redirected_to previous_studies_url
  end
end
