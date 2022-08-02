require "application_system_test_case"

class PhonesTest < ApplicationSystemTestCase
  setup do
    @phone = phones(:one)
  end

  test "visiting the index" do
    visit phones_url
    assert_selector "h1", text: "Phones"
  end

  test "should create phone" do
    visit phones_url
    click_on "New phone"

    check "Activo" if @phone.activo
    fill_in "Cedula de contratistas", with: @phone.cedula_de_contratistas
    fill_in "Numero de telefono", with: @phone.numero_de_telefono
    fill_in "Operador", with: @phone.operador
    click_on "Create Phone"

    assert_text "Phone was successfully created"
    click_on "Back"
  end

  test "should update Phone" do
    visit phone_url(@phone)
    click_on "Edit this phone", match: :first

    check "Activo" if @phone.activo
    fill_in "Cedula de contratistas", with: @phone.cedula_de_contratistas
    fill_in "Numero de telefono", with: @phone.numero_de_telefono
    fill_in "Operador", with: @phone.operador
    click_on "Update Phone"

    assert_text "Phone was successfully updated"
    click_on "Back"
  end

  test "should destroy Phone" do
    visit phone_url(@phone)
    click_on "Destroy this phone", match: :first

    assert_text "Phone was successfully destroyed"
  end
end
