require 'test_helper'

class CotactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotact = cotacts(:one)
  end

  test "should get index" do
    get cotacts_url
    assert_response :success
  end

  test "should get new" do
    get new_cotact_url
    assert_response :success
  end

  test "should create cotact" do
    assert_difference('Cotact.count') do
      post cotacts_url, params: { cotact: { content: @cotact.content, email: @cotact.email, name: @cotact.name } }
    end

    assert_redirected_to cotact_url(Cotact.last)
  end

  test "should show cotact" do
    get cotact_url(@cotact)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotact_url(@cotact)
    assert_response :success
  end

  test "should update cotact" do
    patch cotact_url(@cotact), params: { cotact: { content: @cotact.content, email: @cotact.email, name: @cotact.name } }
    assert_redirected_to cotact_url(@cotact)
  end

  test "should destroy cotact" do
    assert_difference('Cotact.count', -1) do
      delete cotact_url(@cotact)
    end

    assert_redirected_to cotacts_url
  end
end
