require "application_system_test_case"

class MyTotalsTest < ApplicationSystemTestCase
  setup do
    @my_total = my_totals(:one)
  end

  test "visiting the index" do
    visit my_totals_url
    assert_selector "h1", text: "My Totals"
  end

  test "creating a My total" do
    visit my_totals_url
    click_on "New My Total"

    fill_in "First operator", with: @my_total.first_operator
    fill_in "Second operator", with: @my_total.second_operator
    fill_in "Total", with: @my_total.total
    click_on "Create My total"

    assert_text "My total was successfully created"
    click_on "Back"
  end

  test "updating a My total" do
    visit my_totals_url
    click_on "Edit", match: :first

    fill_in "First operator", with: @my_total.first_operator
    fill_in "Second operator", with: @my_total.second_operator
    fill_in "Total", with: @my_total.total
    click_on "Update My total"

    assert_text "My total was successfully updated"
    click_on "Back"
  end

  test "destroying a My total" do
    visit my_totals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My total was successfully destroyed"
  end
end
