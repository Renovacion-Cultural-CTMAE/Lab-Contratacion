require "application_system_test_case"

class InclusionAnnualObjectOfAcquisitionsTest < ApplicationSystemTestCase
  setup do
    @inclusion_annual_object_of_acquisition = inclusion_annual_object_of_acquisitions(:one)
  end

  test "visiting the index" do
    visit inclusion_annual_object_of_acquisitions_url
    assert_selector "h1", text: "Inclusion annual object of acquisitions"
  end

  test "should create inclusion annual object of acquisition" do
    visit inclusion_annual_object_of_acquisitions_url
    click_on "New inclusion annual object of acquisition"

    fill_in "Año", with: @inclusion_annual_object_of_acquisition.año
    fill_in "Fecha constancia", with: @inclusion_annual_object_of_acquisition.fecha_constancia
    fill_in "Proyecto", with: @inclusion_annual_object_of_acquisition.proyecto
    fill_in "Reviso", with: @inclusion_annual_object_of_acquisition.reviso
    click_on "Create Inclusion annual object of acquisition"

    assert_text "Inclusion annual object of acquisition was successfully created"
    click_on "Back"
  end

  test "should update Inclusion annual object of acquisition" do
    visit inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition)
    click_on "Edit this inclusion annual object of acquisition", match: :first

    fill_in "Año", with: @inclusion_annual_object_of_acquisition.año
    fill_in "Fecha constancia", with: @inclusion_annual_object_of_acquisition.fecha_constancia
    fill_in "Proyecto", with: @inclusion_annual_object_of_acquisition.proyecto
    fill_in "Reviso", with: @inclusion_annual_object_of_acquisition.reviso
    click_on "Update Inclusion annual object of acquisition"

    assert_text "Inclusion annual object of acquisition was successfully updated"
    click_on "Back"
  end

  test "should destroy Inclusion annual object of acquisition" do
    visit inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition)
    click_on "Destroy this inclusion annual object of acquisition", match: :first

    assert_text "Inclusion annual object of acquisition was successfully destroyed"
  end
end
