require "application_system_test_case"

class ContractingAuthorizationsTest < ApplicationSystemTestCase
  setup do
    @contracting_authorization = contracting_authorizations(:one)
  end

  test "visiting the index" do
    visit contracting_authorizations_url
    assert_selector "h1", text: "Contracting authorizations"
  end

  test "should create contracting authorization" do
    visit contracting_authorizations_url
    click_on "New contracting authorization"

    fill_in "Cdp", with: @contracting_authorization.cdp
    fill_in "Radicado nis", with: @contracting_authorization.radicado_nis
    fill_in "Rubro", with: @contracting_authorization.rubro
    click_on "Create Contracting authorization"

    assert_text "Contracting authorization was successfully created"
    click_on "Back"
  end

  test "should update Contracting authorization" do
    visit contracting_authorization_url(@contracting_authorization)
    click_on "Edit this contracting authorization", match: :first

    fill_in "Cdp", with: @contracting_authorization.cdp
    fill_in "Radicado nis", with: @contracting_authorization.radicado_nis
    fill_in "Rubro", with: @contracting_authorization.rubro
    click_on "Update Contracting authorization"

    assert_text "Contracting authorization was successfully updated"
    click_on "Back"
  end

  test "should destroy Contracting authorization" do
    visit contracting_authorization_url(@contracting_authorization)
    click_on "Destroy this contracting authorization", match: :first

    assert_text "Contracting authorization was successfully destroyed"
  end
end
