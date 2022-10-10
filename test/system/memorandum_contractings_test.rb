require "application_system_test_case"

class MemorandumContractingsTest < ApplicationSystemTestCase
  setup do
    @memorandum_contracting = memorandum_contractings(:one)
  end

  test "visiting the index" do
    visit memorandum_contractings_url
    assert_selector "h1", text: "Memorandum contractings"
  end

  test "should create memorandum contracting" do
    visit memorandum_contractings_url
    click_on "New memorandum contracting"

    fill_in "Cdp", with: @memorandum_contracting.cdp
    fill_in "Previous studies", with: @memorandum_contracting.previous_studies_id
    fill_in "Tipo formacion", with: @memorandum_contracting.tipo_formacion
    click_on "Create Memorandum contracting"

    assert_text "Memorandum contracting was successfully created"
    click_on "Back"
  end

  test "should update Memorandum contracting" do
    visit memorandum_contracting_url(@memorandum_contracting)
    click_on "Edit this memorandum contracting", match: :first

    fill_in "Cdp", with: @memorandum_contracting.cdp
    fill_in "Previous studies", with: @memorandum_contracting.previous_studies_id
    fill_in "Tipo formacion", with: @memorandum_contracting.tipo_formacion
    click_on "Update Memorandum contracting"

    assert_text "Memorandum contracting was successfully updated"
    click_on "Back"
  end

  test "should destroy Memorandum contracting" do
    visit memorandum_contracting_url(@memorandum_contracting)
    click_on "Destroy this memorandum contracting", match: :first

    assert_text "Memorandum contracting was successfully destroyed"
  end
end
