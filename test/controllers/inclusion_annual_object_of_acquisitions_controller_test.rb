require "test_helper"

class InclusionAnnualObjectOfAcquisitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inclusion_annual_object_of_acquisition = inclusion_annual_object_of_acquisitions(:one)
  end

  test "should get index" do
    get inclusion_annual_object_of_acquisitions_url
    assert_response :success
  end

  test "should get new" do
    get new_inclusion_annual_object_of_acquisition_url
    assert_response :success
  end

  test "should create inclusion_annual_object_of_acquisition" do
    assert_difference("InclusionAnnualObjectOfAcquisition.count") do
      post inclusion_annual_object_of_acquisitions_url, params: { inclusion_annual_object_of_acquisition: { año: @inclusion_annual_object_of_acquisition.año, fecha_constancia: @inclusion_annual_object_of_acquisition.fecha_constancia, proyecto: @inclusion_annual_object_of_acquisition.proyecto, reviso: @inclusion_annual_object_of_acquisition.reviso } }
    end

    assert_redirected_to inclusion_annual_object_of_acquisition_url(InclusionAnnualObjectOfAcquisition.last)
  end

  test "should show inclusion_annual_object_of_acquisition" do
    get inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition)
    assert_response :success
  end

  test "should get edit" do
    get edit_inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition)
    assert_response :success
  end

  test "should update inclusion_annual_object_of_acquisition" do
    patch inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition), params: { inclusion_annual_object_of_acquisition: { año: @inclusion_annual_object_of_acquisition.año, fecha_constancia: @inclusion_annual_object_of_acquisition.fecha_constancia, proyecto: @inclusion_annual_object_of_acquisition.proyecto, reviso: @inclusion_annual_object_of_acquisition.reviso } }
    assert_redirected_to inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition)
  end

  test "should destroy inclusion_annual_object_of_acquisition" do
    assert_difference("InclusionAnnualObjectOfAcquisition.count", -1) do
      delete inclusion_annual_object_of_acquisition_url(@inclusion_annual_object_of_acquisition)
    end

    assert_redirected_to inclusion_annual_object_of_acquisitions_url
  end
end
