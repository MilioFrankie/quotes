require 'test_helper'

class QGeneratorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get q_generators_index_url
    assert_response :success
  end

  test "should get show" do
    get q_generators_show_url
    assert_response :success
  end

  test "should get new" do
    get q_generators_new_url
    assert_response :success
  end

  test "should get edit" do
    get q_generators_edit_url
    assert_response :success
  end

end
