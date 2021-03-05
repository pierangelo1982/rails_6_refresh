require "application_system_test_case"

class MyNamesTest < ApplicationSystemTestCase
  setup do
    @my_name = my_names(:one)
  end

  test "visiting the index" do
    visit my_names_url
    assert_selector "h1", text: "My Names"
  end

  test "creating a My name" do
    visit my_names_url
    click_on "New My Name"

    fill_in "Name", with: @my_name.name
    fill_in "Surname", with: @my_name.surname
    click_on "Create My name"

    assert_text "My name was successfully created"
    click_on "Back"
  end

  test "updating a My name" do
    visit my_names_url
    click_on "Edit", match: :first

    fill_in "Name", with: @my_name.name
    fill_in "Surname", with: @my_name.surname
    click_on "Update My name"

    assert_text "My name was successfully updated"
    click_on "Back"
  end

  test "destroying a My name" do
    visit my_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My name was successfully destroyed"
  end
end
