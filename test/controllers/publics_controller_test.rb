require "test_helper"

class PublicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public = publics(:one)
  end

  test "should get index" do
    get publics_url
    assert_response :success
  end

  test "should get new" do
    get new_public_url
    assert_response :success
  end

  test "should create public" do
    assert_difference("Public.count") do
      post publics_url, params: { public: {} }
    end

    assert_redirected_to public_url(Public.last)
  end

  test "should show public" do
    get public_url(@public)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_url(@public)
    assert_response :success
  end

  test "should update public" do
    patch public_url(@public), params: { public: {} }
    assert_redirected_to public_url(@public)
  end

  test "should destroy public" do
    assert_difference("Public.count", -1) do
      delete public_url(@public)
    end

    assert_redirected_to publics_url
  end
end
