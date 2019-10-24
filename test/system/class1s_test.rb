require "application_system_test_case"

class Class1sTest < ApplicationSystemTestCase
  setup do
    @class1 = class1s(:one)
  end

  test "visiting the index" do
    visit class1s_url
    assert_selector "h1", text: "Class1s"
  end

  test "creating a Class1" do
    visit class1s_url
    click_on "New Class1"

    fill_in "Department", with: @class1.department
    fill_in "Name", with: @class1.name
    fill_in "Number", with: @class1.number
    click_on "Create Class1"

    assert_text "Class1 was successfully created"
    click_on "Back"
  end

  test "updating a Class1" do
    visit class1s_url
    click_on "Edit", match: :first

    fill_in "Department", with: @class1.department
    fill_in "Name", with: @class1.name
    fill_in "Number", with: @class1.number
    click_on "Update Class1"

    assert_text "Class1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Class1" do
    visit class1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class1 was successfully destroyed"
  end
end
