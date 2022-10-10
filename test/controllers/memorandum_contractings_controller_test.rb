require "test_helper"

class MemorandumContractingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memorandum_contracting = memorandum_contractings(:one)
  end

  test "should get index" do
    get memorandum_contractings_url
    assert_response :success
  end

  test "should get new" do
    get new_memorandum_contracting_url
    assert_response :success
  end

  test "should create memorandum_contracting" do
    assert_difference("MemorandumContracting.count") do
      post memorandum_contractings_url, params: { memorandum_contracting: { cdp: @memorandum_contracting.cdp, previous_studies_id: @memorandum_contracting.previous_studies_id, tipo_formacion: @memorandum_contracting.tipo_formacion } }
    end

    assert_redirected_to memorandum_contracting_url(MemorandumContracting.last)
  end

  test "should show memorandum_contracting" do
    get memorandum_contracting_url(@memorandum_contracting)
    assert_response :success
  end

  test "should get edit" do
    get edit_memorandum_contracting_url(@memorandum_contracting)
    assert_response :success
  end

  test "should update memorandum_contracting" do
    patch memorandum_contracting_url(@memorandum_contracting), params: { memorandum_contracting: { cdp: @memorandum_contracting.cdp, previous_studies_id: @memorandum_contracting.previous_studies_id, tipo_formacion: @memorandum_contracting.tipo_formacion } }
    assert_redirected_to memorandum_contracting_url(@memorandum_contracting)
  end

  test "should destroy memorandum_contracting" do
    assert_difference("MemorandumContracting.count", -1) do
      delete memorandum_contracting_url(@memorandum_contracting)
    end

    assert_redirected_to memorandum_contractings_url
  end
end
