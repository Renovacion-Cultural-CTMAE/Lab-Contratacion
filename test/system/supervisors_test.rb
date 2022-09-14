require "application_system_test_case"

class SupervisorsTest < ApplicationSystemTestCase
  setup do
    @supervisor = supervisors(:one)
  end

  test "visiting the index" do
    visit supervisors_url
    assert_selector "h1", text: "Supervisors"
  end

  test "should create supervisor" do
    visit supervisors_url
    click_on "New supervisor"

    fill_in "Apellido", with: @supervisor.apellido
    fill_in "Cargo", with: @supervisor.cargo
    fill_in "Cedula supervisor", with: @supervisor.cedula_supervisor
    fill_in "Correo", with: @supervisor.correo
    fill_in "Nombre", with: @supervisor.nombre
    fill_in "Telefono", with: @supervisor.telefono
    click_on "Create Supervisor"

    assert_text "Supervisor was successfully created"
    click_on "Back"
  end

  test "should update Supervisor" do
    visit supervisor_url(@supervisor)
    click_on "Edit this supervisor", match: :first

    fill_in "Apellido", with: @supervisor.apellido
    fill_in "Cargo", with: @supervisor.cargo
    fill_in "Cedula supervisor", with: @supervisor.cedula_supervisor
    fill_in "Correo", with: @supervisor.correo
    fill_in "Nombre", with: @supervisor.nombre
    fill_in "Telefono", with: @supervisor.telefono
    click_on "Update Supervisor"

    assert_text "Supervisor was successfully updated"
    click_on "Back"
  end

  test "should destroy Supervisor" do
    visit supervisor_url(@supervisor)
    click_on "Destroy this supervisor", match: :first

    assert_text "Supervisor was successfully destroyed"
  end
end
