require "application_system_test_case"

class ContractMovementsTest < ApplicationSystemTestCase
  setup do
    @contract_movement = contract_movements(:one)
  end

  test "visiting the index" do
    visit contract_movements_url
    assert_selector "h1", text: "Contract movements"
  end

  test "should create contract movement" do
    visit contract_movements_url
    click_on "New contract movement"

    fill_in "Fecha movimiento", with: @contract_movement.fecha_movimiento
    fill_in "Numero contrato", with: @contract_movement.numero_contrato
    fill_in "Numero movimiento", with: @contract_movement.numero_movimiento
    fill_in "Observacion", with: @contract_movement.observacion
    fill_in "Saldo", with: @contract_movement.saldo
    fill_in "Valor movimiento", with: @contract_movement.valor_movimiento
    click_on "Create Contract movement"

    assert_text "Contract movement was successfully created"
    click_on "Back"
  end

  test "should update Contract movement" do
    visit contract_movement_url(@contract_movement)
    click_on "Edit this contract movement", match: :first

    fill_in "Fecha movimiento", with: @contract_movement.fecha_movimiento
    fill_in "Numero contrato", with: @contract_movement.numero_contrato
    fill_in "Numero movimiento", with: @contract_movement.numero_movimiento
    fill_in "Observacion", with: @contract_movement.observacion
    fill_in "Saldo", with: @contract_movement.saldo
    fill_in "Valor movimiento", with: @contract_movement.valor_movimiento
    click_on "Update Contract movement"

    assert_text "Contract movement was successfully updated"
    click_on "Back"
  end

  test "should destroy Contract movement" do
    visit contract_movement_url(@contract_movement)
    click_on "Destroy this contract movement", match: :first

    assert_text "Contract movement was successfully destroyed"
  end
end
