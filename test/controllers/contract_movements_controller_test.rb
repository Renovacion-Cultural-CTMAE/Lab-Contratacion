require "test_helper"

class ContractMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_movement = contract_movements(:one)
  end

  test "should get index" do
    get contract_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_movement_url
    assert_response :success
  end

  test "should create contract_movement" do
    assert_difference("ContractMovement.count") do
      post contract_movements_url, params: { contract_movement: { fecha_movimiento: @contract_movement.fecha_movimiento, numero_contrato: @contract_movement.numero_contrato, numero_movimiento: @contract_movement.numero_movimiento, observacion: @contract_movement.observacion, saldo: @contract_movement.saldo, valor_movimiento: @contract_movement.valor_movimiento } }
    end

    assert_redirected_to contract_movement_url(ContractMovement.last)
  end

  test "should show contract_movement" do
    get contract_movement_url(@contract_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_movement_url(@contract_movement)
    assert_response :success
  end

  test "should update contract_movement" do
    patch contract_movement_url(@contract_movement), params: { contract_movement: { fecha_movimiento: @contract_movement.fecha_movimiento, numero_contrato: @contract_movement.numero_contrato, numero_movimiento: @contract_movement.numero_movimiento, observacion: @contract_movement.observacion, saldo: @contract_movement.saldo, valor_movimiento: @contract_movement.valor_movimiento } }
    assert_redirected_to contract_movement_url(@contract_movement)
  end

  test "should destroy contract_movement" do
    assert_difference("ContractMovement.count", -1) do
      delete contract_movement_url(@contract_movement)
    end

    assert_redirected_to contract_movements_url
  end
end
