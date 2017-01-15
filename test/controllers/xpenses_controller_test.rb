require 'test_helper'

class XpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xpense = xpenses(:one)
  end

  test "should get index" do
    get xpenses_url
    assert_response :success
  end

  test "should get new" do
    get new_xpense_url
    assert_response :success
  end

  test "should create xpense" do
    assert_difference('Xpense.count') do
      post xpenses_url, params: { xpense: { amount: @xpense.amount, name: @xpense.name } }
    end

    assert_redirected_to xpense_url(Xpense.last)
  end

  test "should show xpense" do
    get xpense_url(@xpense)
    assert_response :success
  end

  test "should get edit" do
    get edit_xpense_url(@xpense)
    assert_response :success
  end

  test "should update xpense" do
    patch xpense_url(@xpense), params: { xpense: { amount: @xpense.amount, name: @xpense.name } }
    assert_redirected_to xpense_url(@xpense)
  end

  test "should destroy xpense" do
    assert_difference('Xpense.count', -1) do
      delete xpense_url(@xpense)
    end

    assert_redirected_to xpenses_url
  end
end
