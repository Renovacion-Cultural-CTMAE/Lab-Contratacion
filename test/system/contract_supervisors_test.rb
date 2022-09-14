require "application_system_test_case"

class ContractSupervisorsTest < ApplicationSystemTestCase
  setup do
    @contract_supervisor = contract_supervisors(:one)
  end

  test "visiting the index" do
    visit contract_supervisors_url
    assert_selector "h1", text: "Contract supervisors"
  end

  test "should create contract supervisor" do
    visit contract_supervisors_url
    click_on "New contract supervisor"

    fill_in "Cedula contratista", with: @contract_supervisor.cedula_contratista
    fill_in "Cedula supervisor", with: @contract_supervisor.cedula_supervisor
    fill_in "Fecha inicio supervicion", with: @contract_supervisor.fecha_inicio_supervicion
    fill_in "Numero contrato", with: @contract_supervisor.numero_contrato
    click_on "Create Contract supervisor"

    assert_text "Contract supervisor was successfully created"
    click_on "Back"
  end

  test "should update Contract supervisor" do
    visit contract_supervisor_url(@contract_supervisor)
    click_on "Edit this contract supervisor", match: :first

    fill_in "Cedula contratista", with: @contract_supervisor.cedula_contratista
    fill_in "Cedula supervisor", with: @contract_supervisor.cedula_supervisor
    fill_in "Fecha inicio supervicion", with: @contract_supervisor.fecha_inicio_supervicion
    fill_in "Numero contrato", with: @contract_supervisor.numero_contrato
    click_on "Update Contract supervisor"

    assert_text "Contract supervisor was successfully updated"
    click_on "Back"
  end

  test "should destroy Contract supervisor" do
    visit contract_supervisor_url(@contract_supervisor)
    click_on "Destroy this contract supervisor", match: :first

    assert_text "Contract supervisor was successfully destroyed"
  end
end
