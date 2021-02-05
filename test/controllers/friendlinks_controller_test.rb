require "test_helper"

class FriendlinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendlink = friendlinks(:one)
  end

  test "should get index" do
    get friendlinks_url
    assert_response :success
  end

  test "should get new" do
    get new_friendlink_url
    assert_response :success
  end

  test "should create friendlink" do
    assert_difference('Friendlink.count') do
      post friendlinks_url, params: { friendlink: { name: @friendlink.name, picture: @friendlink.picture, subject: @friendlink.subject, url: @friendlink.url } }
    end

    assert_redirected_to friendlink_url(Friendlink.last)
  end

  test "should show friendlink" do
    get friendlink_url(@friendlink)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendlink_url(@friendlink)
    assert_response :success
  end

  test "should update friendlink" do
    patch friendlink_url(@friendlink), params: { friendlink: { name: @friendlink.name, picture: @friendlink.picture, subject: @friendlink.subject, url: @friendlink.url } }
    assert_redirected_to friendlink_url(@friendlink)
  end

  test "should destroy friendlink" do
    assert_difference('Friendlink.count', -1) do
      delete friendlink_url(@friendlink)
    end

    assert_redirected_to friendlinks_url
  end
end
