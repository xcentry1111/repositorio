require 'test_helper'

class CreativesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creatives_index_url
    assert_response :success
  end

  test "should get new" do
    get creatives_new_url
    assert_response :success
  end

  test "should get edit" do
    get creatives_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get creatives_destroy_url
    assert_response :success
  end

  test "should get update" do
    get creatives_update_url
    assert_response :success
  end

end
