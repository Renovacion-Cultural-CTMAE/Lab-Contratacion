require "test_helper"

class CompetencyCurriculumDesignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competency_curriculum_design = competency_curriculum_designs(:one)
  end

  test "should get index" do
    get competency_curriculum_designs_url
    assert_response :success
  end

  test "should get new" do
    get new_competency_curriculum_design_url
    assert_response :success
  end

  test "should create competency_curriculum_design" do
    assert_difference("CompetencyCurriculumDesign.count") do
      post competency_curriculum_designs_url, params: { competency_curriculum_design: { codigo_diseño_curricural: @competency_curriculum_design.codigo_diseño_curricural, numero_competencia: @competency_curriculum_design.numero_competencia } }
    end

    assert_redirected_to competency_curriculum_design_url(CompetencyCurriculumDesign.last)
  end

  test "should show competency_curriculum_design" do
    get competency_curriculum_design_url(@competency_curriculum_design)
    assert_response :success
  end

  test "should get edit" do
    get edit_competency_curriculum_design_url(@competency_curriculum_design)
    assert_response :success
  end

  test "should update competency_curriculum_design" do
    patch competency_curriculum_design_url(@competency_curriculum_design), params: { competency_curriculum_design: { codigo_diseño_curricural: @competency_curriculum_design.codigo_diseño_curricural, numero_competencia: @competency_curriculum_design.numero_competencia } }
    assert_redirected_to competency_curriculum_design_url(@competency_curriculum_design)
  end

  test "should destroy competency_curriculum_design" do
    assert_difference("CompetencyCurriculumDesign.count", -1) do
      delete competency_curriculum_design_url(@competency_curriculum_design)
    end

    assert_redirected_to competency_curriculum_designs_url
  end
end
