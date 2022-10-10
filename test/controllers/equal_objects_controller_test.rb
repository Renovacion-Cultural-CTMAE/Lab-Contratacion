require "test_helper"

class EqualObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equal_object = equal_objects(:one)
  end

  test "should get index" do
    get equal_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_equal_object_url
    assert_response :success
  end

  test "should create equal_object" do
    assert_difference("EqualObject.count") do
      post equal_objects_url, params: { equal_object: { previous_study_id: @equal_object.previous_study_id } }
    end

    assert_redirected_to equal_object_url(EqualObject.last)
  end

  test "should show equal_object" do
    get equal_object_url(@equal_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_equal_object_url(@equal_object)
    assert_response :success
  end

  test "should update equal_object" do
    patch equal_object_url(@equal_object), params: { equal_object: { previous_study_id: @equal_object.previous_study_id } }
    assert_redirected_to equal_object_url(@equal_object)
  end

  test "should destroy equal_object" do
    assert_difference("EqualObject.count", -1) do
      delete equal_object_url(@equal_object)
    end

    assert_redirected_to equal_objects_url
  end
end
