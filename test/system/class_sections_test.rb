require "application_system_test_case"

class ClassSectionsTest < ApplicationSystemTestCase
  setup do
    @class_section = class_sections(:one)
  end

  test "visiting the index" do
    visit class_sections_url
    assert_selector "h1", text: "Class Sections"
  end

  test "creating a Class section" do
    visit class_sections_url
    click_on "New Class Section"

    fill_in "Course", with: @class_section.course_id
    fill_in "Number", with: @class_section.number
    fill_in "Professor", with: @class_section.professor_id
    click_on "Create Class section"

    assert_text "Class section was successfully created"
    click_on "Back"
  end

  test "updating a Class section" do
    visit class_sections_url
    click_on "Edit", match: :first

    fill_in "Course", with: @class_section.course_id
    fill_in "Number", with: @class_section.number
    fill_in "Professor", with: @class_section.professor_id
    click_on "Update Class section"

    assert_text "Class section was successfully updated"
    click_on "Back"
  end

  test "destroying a Class section" do
    visit class_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class section was successfully destroyed"
  end
end
