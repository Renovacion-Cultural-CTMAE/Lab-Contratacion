require "application_system_test_case"

class EqualObjectsTest < ApplicationSystemTestCase
  setup do
    @equal_object = equal_objects(:one)
  end

  test "visiting the index" do
    visit equal_objects_url
    assert_selector "h1", text: "Equal objects"
  end

  test "should create equal object" do
    visit equal_objects_url
    click_on "New equal object"

    fill_in "Previous study", with: @equal_object.previous_study_id
    click_on "Create Equal object"

    assert_text "Equal object was successfully created"
    click_on "Back"
  end

  test "should update Equal object" do
    visit equal_object_url(@equal_object)
    click_on "Edit this equal object", match: :first

    fill_in "Previous study", with: @equal_object.previous_study_id
    click_on "Update Equal object"

    assert_text "Equal object was successfully updated"
    click_on "Back"
  end

  test "should destroy Equal object" do
    visit equal_object_url(@equal_object)
    click_on "Destroy this equal object", match: :first

    assert_text "Equal object was successfully destroyed"
  end
end
