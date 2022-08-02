require "test_helper"

class PensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pension = pensions(:one)
  end

  test "should get index" do
    get pensions_url
    assert_response :success
  end

  test "should get new" do
    get new_pension_url
    assert_response :success
  end

  test "should create pension" do
    assert_difference("Pension.count") do
      post pensions_url, params: { pension: { cedula_contratista: @pension.cedula_contratista, ciudad_de_la_entidad: @pension.ciudad_de_la_entidad, correo_de_la_entidad: @pension.correo_de_la_entidad, nit_de_la_entidad: @pension.nit_de_la_entidad, nombre_la_entidad: @pension.nombre_la_entidad, telefono_de_la_entidad: @pension.telefono_de_la_entidad } }
    end

    assert_redirected_to pension_url(Pension.last)
  end

  test "should show pension" do
    get pension_url(@pension)
    assert_response :success
  end

  test "should get edit" do
    get edit_pension_url(@pension)
    assert_response :success
  end

  test "should update pension" do
    patch pension_url(@pension), params: { pension: { cedula_contratista: @pension.cedula_contratista, ciudad_de_la_entidad: @pension.ciudad_de_la_entidad, correo_de_la_entidad: @pension.correo_de_la_entidad, nit_de_la_entidad: @pension.nit_de_la_entidad, nombre_la_entidad: @pension.nombre_la_entidad, telefono_de_la_entidad: @pension.telefono_de_la_entidad } }
    assert_redirected_to pension_url(@pension)
  end

  test "should destroy pension" do
    assert_difference("Pension.count", -1) do
      delete pension_url(@pension)
    end

    assert_redirected_to pensions_url
  end
end
