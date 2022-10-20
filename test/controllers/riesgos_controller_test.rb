require "test_helper"

class RiesgosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @riesgo = riesgos(:one)
  end

  test "should get index" do
    get riesgos_url
    assert_response :success
  end

  test "should get new" do
    get new_riesgo_url
    assert_response :success
  end

  test "should create riesgo" do
    assert_difference("Riesgo.count") do
      post riesgos_url, params: { riesgo: { descripcion_operacional1: @riesgo.descripcion_operacional1, descripcion_operacional2: @riesgo.descripcion_operacional2, descripcion_operacional3: @riesgo.descripcion_operacional3 } }
    end

    assert_redirected_to riesgo_url(Riesgo.last)
  end

  test "should show riesgo" do
    get riesgo_url(@riesgo)
    assert_response :success
  end

  test "should get edit" do
    get edit_riesgo_url(@riesgo)
    assert_response :success
  end

  test "should update riesgo" do
    patch riesgo_url(@riesgo), params: { riesgo: { descripcion_operacional1: @riesgo.descripcion_operacional1, descripcion_operacional2: @riesgo.descripcion_operacional2, descripcion_operacional3: @riesgo.descripcion_operacional3 } }
    assert_redirected_to riesgo_url(@riesgo)
  end

  test "should destroy riesgo" do
    assert_difference("Riesgo.count", -1) do
      delete riesgo_url(@riesgo)
    end

    assert_redirected_to riesgos_url
  end
end
