require "application_system_test_case"

class ContractRequirementsTest < ApplicationSystemTestCase
  setup do
    @contract_requirement = contract_requirements(:one)
  end

  test "visiting the index" do
    visit contract_requirements_url
    assert_selector "h1", text: "Contract requirements"
  end

  test "should create contract requirement" do
    visit contract_requirements_url
    click_on "New contract requirement"

    fill_in "Codigo requisitos", with: @contract_requirement.codigo_requisitos
    fill_in "Nombre requisito", with: @contract_requirement.nombre_requisito
    fill_in "Numero contrato", with: @contract_requirement.numero_contrato
    fill_in "Requisitos", with: @contract_requirement.requisitos
    click_on "Create Contract requirement"

    assert_text "Contract requirement was successfully created"
    click_on "Back"
  end

  test "should update Contract requirement" do
    visit contract_requirement_url(@contract_requirement)
    click_on "Edit this contract requirement", match: :first

    fill_in "Codigo requisitos", with: @contract_requirement.codigo_requisitos
    fill_in "Nombre requisito", with: @contract_requirement.nombre_requisito
    fill_in "Numero contrato", with: @contract_requirement.numero_contrato
    fill_in "Requisitos", with: @contract_requirement.requisitos
    click_on "Update Contract requirement"

    assert_text "Contract requirement was successfully updated"
    click_on "Back"
  end

  test "should destroy Contract requirement" do
    visit contract_requirement_url(@contract_requirement)
    click_on "Destroy this contract requirement", match: :first

    assert_text "Contract requirement was successfully destroyed"
  end
end
