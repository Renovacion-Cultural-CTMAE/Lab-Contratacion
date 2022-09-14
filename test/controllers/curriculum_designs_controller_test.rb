require "test_helper"

class CurriculumDesignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curriculum_design = curriculum_designs(:one)
  end

  test "should get index" do
    get curriculum_designs_url
    assert_response :success
  end

  test "should get new" do
    get new_curriculum_design_url
    assert_response :success
  end

  test "should create curriculum_design" do
    assert_difference("CurriculumDesign.count") do
      post curriculum_designs_url, params: { curriculum_design: { codigo_diseño_curricural: @curriculum_design.codigo_diseño_curricural, nombre_diseño_curricural: @curriculum_design.nombre_diseño_curricural, numero_registro_calificado: @curriculum_design.numero_registro_calificado } }
    end

    assert_redirected_to curriculum_design_url(CurriculumDesign.last)
  end

  test "should show curriculum_design" do
    get curriculum_design_url(@curriculum_design)
    assert_response :success
  end

  test "should get edit" do
    get edit_curriculum_design_url(@curriculum_design)
    assert_response :success
  end

  test "should update curriculum_design" do
    patch curriculum_design_url(@curriculum_design), params: { curriculum_design: { codigo_diseño_curricural: @curriculum_design.codigo_diseño_curricural, nombre_diseño_curricural: @curriculum_design.nombre_diseño_curricural, numero_registro_calificado: @curriculum_design.numero_registro_calificado } }
    assert_redirected_to curriculum_design_url(@curriculum_design)
  end

  test "should destroy curriculum_design" do
    assert_difference("CurriculumDesign.count", -1) do
      delete curriculum_design_url(@curriculum_design)
    end

    assert_redirected_to curriculum_designs_url
  end
end
