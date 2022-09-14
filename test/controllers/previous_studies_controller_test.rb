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
      post previous_studies_url, params: { previous_study: { cedula_contratista: @previous_study.cedula_contratista, codigo_estudios: @previous_study.codigo_estudios, codigo_profesion: @previous_study.codigo_profesion, codigo_programa: @previous_study.codigo_programa, fecha_estudios: @previous_study.fecha_estudios, valor_estudios: @previous_study.valor_estudios } }
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
    patch previous_study_url(@previous_study), params: { previous_study: { cedula_contratista: @previous_study.cedula_contratista, codigo_estudios: @previous_study.codigo_estudios, codigo_profesion: @previous_study.codigo_profesion, codigo_programa: @previous_study.codigo_programa, fecha_estudios: @previous_study.fecha_estudios, valor_estudios: @previous_study.valor_estudios } }
    assert_redirected_to previous_study_url(@previous_study)
  end

  test "should destroy previous_study" do
    assert_difference("PreviousStudy.count", -1) do
      delete previous_study_url(@previous_study)
    end

    assert_redirected_to previous_studies_url
  end
end
