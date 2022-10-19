require "application_system_test_case"

class InclusionObjectAcqusTest < ApplicationSystemTestCase
  setup do
    @inclusion_object_acqu = inclusion_object_acqus(:one)
  end

  test "visiting the index" do
    visit inclusion_object_acqus_url
    assert_selector "h1", text: "Inclusion object acqus"
  end

  test "should create inclusion object acqu" do
    visit inclusion_object_acqus_url
    click_on "New inclusion object acqu"

    fill_in "Año", with: @inclusion_object_acqu.año
    fill_in "Fecha constancia", with: @inclusion_object_acqu.fecha_constancia
    fill_in "Proyecto", with: @inclusion_object_acqu.proyecto
    fill_in "Reviso", with: @inclusion_object_acqu.reviso
    click_on "Create Inclusion object acqu"

    assert_text "Inclusion object acqu was successfully created"
    click_on "Back"
  end

  test "should update Inclusion object acqu" do
    visit inclusion_object_acqu_url(@inclusion_object_acqu)
    click_on "Edit this inclusion object acqu", match: :first

    fill_in "Año", with: @inclusion_object_acqu.año
    fill_in "Fecha constancia", with: @inclusion_object_acqu.fecha_constancia
    fill_in "Proyecto", with: @inclusion_object_acqu.proyecto
    fill_in "Reviso", with: @inclusion_object_acqu.reviso
    click_on "Update Inclusion object acqu"

    assert_text "Inclusion object acqu was successfully updated"
    click_on "Back"
  end

  test "should destroy Inclusion object acqu" do
    visit inclusion_object_acqu_url(@inclusion_object_acqu)
    click_on "Destroy this inclusion object acqu", match: :first

    assert_text "Inclusion object acqu was successfully destroyed"
  end
end
