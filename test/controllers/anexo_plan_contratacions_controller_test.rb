require "test_helper"

class AnexoPlanContratacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anexo_plan_contratacion = anexo_plan_contratacions(:one)
  end

  test "should get index" do
    get anexo_plan_contratacions_url
    assert_response :success
  end

  test "should get new" do
    get new_anexo_plan_contratacion_url
    assert_response :success
  end

  test "should create anexo_plan_contratacion" do
    assert_difference("AnexoPlanContratacion.count") do
      post anexo_plan_contratacions_url, params: { anexo_plan_contratacion: { duracion_programa: @anexo_plan_contratacion.duracion_programa, elaborado_por: @anexo_plan_contratacion.elaborado_por, observaciones: @anexo_plan_contratacion.observaciones, periodo: @anexo_plan_contratacion.periodo, telefono: @anexo_plan_contratacion.telefono } }
    end

    assert_redirected_to anexo_plan_contratacion_url(AnexoPlanContratacion.last)
  end

  test "should show anexo_plan_contratacion" do
    get anexo_plan_contratacion_url(@anexo_plan_contratacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_anexo_plan_contratacion_url(@anexo_plan_contratacion)
    assert_response :success
  end

  test "should update anexo_plan_contratacion" do
    patch anexo_plan_contratacion_url(@anexo_plan_contratacion), params: { anexo_plan_contratacion: { duracion_programa: @anexo_plan_contratacion.duracion_programa, elaborado_por: @anexo_plan_contratacion.elaborado_por, observaciones: @anexo_plan_contratacion.observaciones, periodo: @anexo_plan_contratacion.periodo, telefono: @anexo_plan_contratacion.telefono } }
    assert_redirected_to anexo_plan_contratacion_url(@anexo_plan_contratacion)
  end

  test "should destroy anexo_plan_contratacion" do
    assert_difference("AnexoPlanContratacion.count", -1) do
      delete anexo_plan_contratacion_url(@anexo_plan_contratacion)
    end

    assert_redirected_to anexo_plan_contratacions_url
  end
end
