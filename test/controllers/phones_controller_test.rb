require "test_helper"

class PhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone = phones(:one)
  end

  test "should get index" do
    get phones_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_url
    assert_response :success
  end

  test "should create phone" do
    assert_difference("Phone.count") do
      post phones_url, params: { phone: { activo: @phone.activo, cedula_de_contratistas: @phone.cedula_de_contratistas, numero_de_telefono: @phone.numero_de_telefono, operador: @phone.operador } }
    end

    assert_redirected_to phone_url(Phone.last)
  end

  test "should show phone" do
    get phone_url(@phone)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_url(@phone)
    assert_response :success
  end

  test "should update phone" do
    patch phone_url(@phone), params: { phone: { activo: @phone.activo, cedula_de_contratistas: @phone.cedula_de_contratistas, numero_de_telefono: @phone.numero_de_telefono, operador: @phone.operador } }
    assert_redirected_to phone_url(@phone)
  end

  test "should destroy phone" do
    assert_difference("Phone.count", -1) do
      delete phone_url(@phone)
    end

    assert_redirected_to phones_url
  end
end
