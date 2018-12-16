require 'test_helper'

class StickersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stickers_index_url
    assert_response :success
  end

  test "should get show" do
    get stickers_show_url
    assert_response :success
  end

  test "should get new" do
    get stickers_new_url
    assert_response :success
  end

  test "should get edit" do
    get stickers_edit_url
    assert_response :success
  end

  test "should get destory" do
    get stickers_destory_url
    assert_response :success
  end

end
