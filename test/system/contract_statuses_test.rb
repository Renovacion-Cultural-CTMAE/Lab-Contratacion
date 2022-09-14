require "application_system_test_case"

class ContractStatusesTest < ApplicationSystemTestCase
  setup do
    @contract_status = contract_statuses(:one)
  end

  test "visiting the index" do
    visit contract_statuses_url
    assert_selector "h1", text: "Contract statuses"
  end

  test "should create contract status" do
    visit contract_statuses_url
    click_on "New contract status"

    fill_in "Fecha del estado", with: @contract_status.fecha_del_estado
    fill_in "Motivos contrato", with: @contract_status.motivos_contrato
    fill_in "Numero contrato", with: @contract_status.numero_contrato
    click_on "Create Contract status"

    assert_text "Contract status was successfully created"
    click_on "Back"
  end

  test "should update Contract status" do
    visit contract_status_url(@contract_status)
    click_on "Edit this contract status", match: :first

    fill_in "Fecha del estado", with: @contract_status.fecha_del_estado
    fill_in "Motivos contrato", with: @contract_status.motivos_contrato
    fill_in "Numero contrato", with: @contract_status.numero_contrato
    click_on "Update Contract status"

    assert_text "Contract status was successfully updated"
    click_on "Back"
  end

  test "should destroy Contract status" do
    visit contract_status_url(@contract_status)
    click_on "Destroy this contract status", match: :first

    assert_text "Contract status was successfully destroyed"
  end
end
