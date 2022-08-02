require "test_helper"

class ContractorProfessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractor_profession = contractor_professions(:one)
  end

  test "should get index" do
    get contractor_professions_url
    assert_response :success
  end

  test "should get new" do
    get new_contractor_profession_url
    assert_response :success
  end

  test "should create contractor_profession" do
    assert_difference("ContractorProfession.count") do
      post contractor_professions_url, params: { contractor_profession: { cedula_contratista: @contractor_profession.cedula_contratista, codigo_profesion: @contractor_profession.codigo_profesion, nombre_profesion: @contractor_profession.nombre_profesion } }
    end

    assert_redirected_to contractor_profession_url(ContractorProfession.last)
  end

  test "should show contractor_profession" do
    get contractor_profession_url(@contractor_profession)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractor_profession_url(@contractor_profession)
    assert_response :success
  end

  test "should update contractor_profession" do
    patch contractor_profession_url(@contractor_profession), params: { contractor_profession: { cedula_contratista: @contractor_profession.cedula_contratista, codigo_profesion: @contractor_profession.codigo_profesion, nombre_profesion: @contractor_profession.nombre_profesion } }
    assert_redirected_to contractor_profession_url(@contractor_profession)
  end

  test "should destroy contractor_profession" do
    assert_difference("ContractorProfession.count", -1) do
      delete contractor_profession_url(@contractor_profession)
    end

    assert_redirected_to contractor_professions_url
  end
end
