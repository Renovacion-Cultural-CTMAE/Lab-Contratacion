require "test_helper"

class ContractSupervisorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_supervisor = contract_supervisors(:one)
  end

  test "should get index" do
    get contract_supervisors_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_supervisor_url
    assert_response :success
  end

  test "should create contract_supervisor" do
    assert_difference("ContractSupervisor.count") do
      post contract_supervisors_url, params: { contract_supervisor: { cedula_contratista: @contract_supervisor.cedula_contratista, cedula_supervisor: @contract_supervisor.cedula_supervisor, fecha_inicio_supervicion: @contract_supervisor.fecha_inicio_supervicion, numero_contrato: @contract_supervisor.numero_contrato } }
    end

    assert_redirected_to contract_supervisor_url(ContractSupervisor.last)
  end

  test "should show contract_supervisor" do
    get contract_supervisor_url(@contract_supervisor)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_supervisor_url(@contract_supervisor)
    assert_response :success
  end

  test "should update contract_supervisor" do
    patch contract_supervisor_url(@contract_supervisor), params: { contract_supervisor: { cedula_contratista: @contract_supervisor.cedula_contratista, cedula_supervisor: @contract_supervisor.cedula_supervisor, fecha_inicio_supervicion: @contract_supervisor.fecha_inicio_supervicion, numero_contrato: @contract_supervisor.numero_contrato } }
    assert_redirected_to contract_supervisor_url(@contract_supervisor)
  end

  test "should destroy contract_supervisor" do
    assert_difference("ContractSupervisor.count", -1) do
      delete contract_supervisor_url(@contract_supervisor)
    end

    assert_redirected_to contract_supervisors_url
  end
end
