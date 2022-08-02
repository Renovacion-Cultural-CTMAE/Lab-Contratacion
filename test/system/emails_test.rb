require "application_system_test_case"

class EmailsTest < ApplicationSystemTestCase
  setup do
    @email = emails(:one)
  end

  test "visiting the index" do
    visit emails_url
    assert_selector "h1", text: "Emails"
  end

  test "should create email" do
    visit emails_url
    click_on "New email"

    check "Activo" if @email.activo
    fill_in "Cedula de contratistas", with: @email.cedula_de_contratistas
    fill_in "Correo", with: @email.correo
    click_on "Create Email"

    assert_text "Email was successfully created"
    click_on "Back"
  end

  test "should update Email" do
    visit email_url(@email)
    click_on "Edit this email", match: :first

    check "Activo" if @email.activo
    fill_in "Cedula de contratistas", with: @email.cedula_de_contratistas
    fill_in "Correo", with: @email.correo
    click_on "Update Email"

    assert_text "Email was successfully updated"
    click_on "Back"
  end

  test "should destroy Email" do
    visit email_url(@email)
    click_on "Destroy this email", match: :first

    assert_text "Email was successfully destroyed"
  end
end
