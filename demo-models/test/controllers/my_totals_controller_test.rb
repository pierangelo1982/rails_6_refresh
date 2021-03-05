require "test_helper"

class MyTotalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_total = my_totals(:one)
  end

  test "should get index" do
    get my_totals_url
    assert_response :success
  end

  test "should get new" do
    get new_my_total_url
    assert_response :success
  end

  test "should create my_total" do
    assert_difference('MyTotal.count') do
      post my_totals_url, params: { my_total: { first_operator: @my_total.first_operator, second_operator: @my_total.second_operator, total: @my_total.total } }
    end

    assert_redirected_to my_total_url(MyTotal.last)
  end

  test "should show my_total" do
    get my_total_url(@my_total)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_total_url(@my_total)
    assert_response :success
  end

  test "should update my_total" do
    patch my_total_url(@my_total), params: { my_total: { first_operator: @my_total.first_operator, second_operator: @my_total.second_operator, total: @my_total.total } }
    assert_redirected_to my_total_url(@my_total)
  end

  test "should destroy my_total" do
    assert_difference('MyTotal.count', -1) do
      delete my_total_url(@my_total)
    end

    assert_redirected_to my_totals_url
  end
end
