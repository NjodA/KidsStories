require 'test_helper'

class QuizesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quizes_index_url
    assert_response :success
  end

  test "should get show" do
    get quizes_show_url
    assert_response :success
  end

  test "should get new" do
    get quizes_new_url
    assert_response :success
  end

  test "should get edit" do
    get quizes_edit_url
    assert_response :success
  end

  test "should get destory" do
    get quizes_destory_url
    assert_response :success
  end

end
