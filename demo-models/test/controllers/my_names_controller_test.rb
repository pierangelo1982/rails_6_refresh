require "test_helper"

class MyNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_name = my_names(:one)
  end

  test "should get index" do
    get my_names_url
    assert_response :success
  end

  test "should get new" do
    get new_my_name_url
    assert_response :success
  end

  test "should create my_name" do
    assert_difference('MyName.count') do
      post my_names_url, params: { my_name: { name: @my_name.name, surname: @my_name.surname } }
    end

    assert_redirected_to my_name_url(MyName.last)
  end

  test "should show my_name" do
    get my_name_url(@my_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_name_url(@my_name)
    assert_response :success
  end

  test "should update my_name" do
    patch my_name_url(@my_name), params: { my_name: { name: @my_name.name, surname: @my_name.surname } }
    assert_redirected_to my_name_url(@my_name)
  end

  test "should destroy my_name" do
    assert_difference('MyName.count', -1) do
      delete my_name_url(@my_name)
    end

    assert_redirected_to my_names_url
  end
end
