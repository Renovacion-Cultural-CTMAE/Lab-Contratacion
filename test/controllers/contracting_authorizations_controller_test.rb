require "test_helper"

class ContractingAuthorizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contracting_authorization = contracting_authorizations(:one)
  end

  test "should get index" do
    get contracting_authorizations_url
    assert_response :success
  end

  test "should get new" do
    get new_contracting_authorization_url
    assert_response :success
  end

  test "should create contracting_authorization" do
    assert_difference("ContractingAuthorization.count") do
      post contracting_authorizations_url, params: { contracting_authorization: { cdp: @contracting_authorization.cdp, radicado_nis: @contracting_authorization.radicado_nis, rubro: @contracting_authorization.rubro } }
    end

    assert_redirected_to contracting_authorization_url(ContractingAuthorization.last)
  end

  test "should show contracting_authorization" do
    get contracting_authorization_url(@contracting_authorization)
    assert_response :success
  end

  test "should get edit" do
    get edit_contracting_authorization_url(@contracting_authorization)
    assert_response :success
  end

  test "should update contracting_authorization" do
    patch contracting_authorization_url(@contracting_authorization), params: { contracting_authorization: { cdp: @contracting_authorization.cdp, radicado_nis: @contracting_authorization.radicado_nis, rubro: @contracting_authorization.rubro } }
    assert_redirected_to contracting_authorization_url(@contracting_authorization)
  end

  test "should destroy contracting_authorization" do
    assert_difference("ContractingAuthorization.count", -1) do
      delete contracting_authorization_url(@contracting_authorization)
    end

    assert_redirected_to contracting_authorizations_url
  end
end
