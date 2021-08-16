require 'test_helper'

class DevelopersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get developers_index_url
    assert_response :success
  end

  test "should get show" do
    get developers_show_url
    assert_response :success
  end

  test "should get create" do
    get developers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get developers_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get developers_edit_url
    assert_response :success
  end

end
