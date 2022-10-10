require "test_helper"

class PersonalInexistencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_inexistence = personal_inexistences(:one)
  end

  test "should get index" do
    get personal_inexistences_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_inexistence_url
    assert_response :success
  end

  test "should create personal_inexistence" do
    assert_difference("PersonalInexistence.count") do
      post personal_inexistences_url, params: { personal_inexistence: { previous_study_id: @personal_inexistence.previous_study_id } }
    end

    assert_redirected_to personal_inexistence_url(PersonalInexistence.last)
  end

  test "should show personal_inexistence" do
    get personal_inexistence_url(@personal_inexistence)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_inexistence_url(@personal_inexistence)
    assert_response :success
  end

  test "should update personal_inexistence" do
    patch personal_inexistence_url(@personal_inexistence), params: { personal_inexistence: { previous_study_id: @personal_inexistence.previous_study_id } }
    assert_redirected_to personal_inexistence_url(@personal_inexistence)
  end

  test "should destroy personal_inexistence" do
    assert_difference("PersonalInexistence.count", -1) do
      delete personal_inexistence_url(@personal_inexistence)
    end

    assert_redirected_to personal_inexistences_url
  end
end
