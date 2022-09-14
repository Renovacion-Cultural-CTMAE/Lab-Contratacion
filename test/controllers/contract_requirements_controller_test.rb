require "test_helper"

class ContractRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_requirement = contract_requirements(:one)
  end

  test "should get index" do
    get contract_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_requirement_url
    assert_response :success
  end

  test "should create contract_requirement" do
    assert_difference("ContractRequirement.count") do
      post contract_requirements_url, params: { contract_requirement: { codigo_requisitos: @contract_requirement.codigo_requisitos, nombre_requisito: @contract_requirement.nombre_requisito, numero_contrato: @contract_requirement.numero_contrato, requisitos: @contract_requirement.requisitos } }
    end

    assert_redirected_to contract_requirement_url(ContractRequirement.last)
  end

  test "should show contract_requirement" do
    get contract_requirement_url(@contract_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_requirement_url(@contract_requirement)
    assert_response :success
  end

  test "should update contract_requirement" do
    patch contract_requirement_url(@contract_requirement), params: { contract_requirement: { codigo_requisitos: @contract_requirement.codigo_requisitos, nombre_requisito: @contract_requirement.nombre_requisito, numero_contrato: @contract_requirement.numero_contrato, requisitos: @contract_requirement.requisitos } }
    assert_redirected_to contract_requirement_url(@contract_requirement)
  end

  test "should destroy contract_requirement" do
    assert_difference("ContractRequirement.count", -1) do
      delete contract_requirement_url(@contract_requirement)
    end

    assert_redirected_to contract_requirements_url
  end
end
