require "application_system_test_case"

class PersonalInexistencesTest < ApplicationSystemTestCase
  setup do
    @personal_inexistence = personal_inexistences(:one)
  end

  test "visiting the index" do
    visit personal_inexistences_url
    assert_selector "h1", text: "Personal inexistences"
  end

  test "should create personal inexistence" do
    visit personal_inexistences_url
    click_on "New personal inexistence"

    fill_in "Previous study", with: @personal_inexistence.previous_study_id
    click_on "Create Personal inexistence"

    assert_text "Personal inexistence was successfully created"
    click_on "Back"
  end

  test "should update Personal inexistence" do
    visit personal_inexistence_url(@personal_inexistence)
    click_on "Edit this personal inexistence", match: :first

    fill_in "Previous study", with: @personal_inexistence.previous_study_id
    click_on "Update Personal inexistence"

    assert_text "Personal inexistence was successfully updated"
    click_on "Back"
  end

  test "should destroy Personal inexistence" do
    visit personal_inexistence_url(@personal_inexistence)
    click_on "Destroy this personal inexistence", match: :first

    assert_text "Personal inexistence was successfully destroyed"
  end
end
