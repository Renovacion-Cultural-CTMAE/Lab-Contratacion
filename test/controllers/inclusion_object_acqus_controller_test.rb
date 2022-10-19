require "test_helper"

class InclusionObjectAcqusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inclusion_object_acqu = inclusion_object_acqus(:one)
  end

  test "should get index" do
    get inclusion_object_acqus_url
    assert_response :success
  end

  test "should get new" do
    get new_inclusion_object_acqu_url
    assert_response :success
  end

  test "should create inclusion_object_acqu" do
    assert_difference("InclusionObjectAcqu.count") do
      post inclusion_object_acqus_url, params: { inclusion_object_acqu: { año: @inclusion_object_acqu.año, fecha_constancia: @inclusion_object_acqu.fecha_constancia, proyecto: @inclusion_object_acqu.proyecto, reviso: @inclusion_object_acqu.reviso } }
    end

    assert_redirected_to inclusion_object_acqu_url(InclusionObjectAcqu.last)
  end

  test "should show inclusion_object_acqu" do
    get inclusion_object_acqu_url(@inclusion_object_acqu)
    assert_response :success
  end

  test "should get edit" do
    get edit_inclusion_object_acqu_url(@inclusion_object_acqu)
    assert_response :success
  end

  test "should update inclusion_object_acqu" do
    patch inclusion_object_acqu_url(@inclusion_object_acqu), params: { inclusion_object_acqu: { año: @inclusion_object_acqu.año, fecha_constancia: @inclusion_object_acqu.fecha_constancia, proyecto: @inclusion_object_acqu.proyecto, reviso: @inclusion_object_acqu.reviso } }
    assert_redirected_to inclusion_object_acqu_url(@inclusion_object_acqu)
  end

  test "should destroy inclusion_object_acqu" do
    assert_difference("InclusionObjectAcqu.count", -1) do
      delete inclusion_object_acqu_url(@inclusion_object_acqu)
    end

    assert_redirected_to inclusion_object_acqus_url
  end
end
