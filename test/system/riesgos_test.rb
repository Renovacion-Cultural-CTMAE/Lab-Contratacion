require "application_system_test_case"

class RiesgosTest < ApplicationSystemTestCase
  setup do
    @riesgo = riesgos(:one)
  end

  test "visiting the index" do
    visit riesgos_url
    assert_selector "h1", text: "Riesgos"
  end

  test "should create riesgo" do
    visit riesgos_url
    click_on "New riesgo"

    fill_in "Descripcion operacional1", with: @riesgo.descripcion_operacional1
    fill_in "Descripcion operacional2", with: @riesgo.descripcion_operacional2
    fill_in "Descripcion operacional3", with: @riesgo.descripcion_operacional3
    click_on "Create Riesgo"

    assert_text "Riesgo was successfully created"
    click_on "Back"
  end

  test "should update Riesgo" do
    visit riesgo_url(@riesgo)
    click_on "Edit this riesgo", match: :first

    fill_in "Descripcion operacional1", with: @riesgo.descripcion_operacional1
    fill_in "Descripcion operacional2", with: @riesgo.descripcion_operacional2
    fill_in "Descripcion operacional3", with: @riesgo.descripcion_operacional3
    click_on "Update Riesgo"

    assert_text "Riesgo was successfully updated"
    click_on "Back"
  end

  test "should destroy Riesgo" do
    visit riesgo_url(@riesgo)
    click_on "Destroy this riesgo", match: :first

    assert_text "Riesgo was successfully destroyed"
  end
end
