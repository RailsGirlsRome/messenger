require 'test_helper'

class MessageDeliveriesControllerTest < ActionController::TestCase
  setup do
    @message_delivery = message_deliveries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:message_deliveries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message_delivery" do
    assert_difference('MessageDelivery.count') do
      post :create, message_delivery: {  }
    end

    assert_redirected_to message_delivery_path(assigns(:message_delivery))
  end

  test "should show message_delivery" do
    get :show, id: @message_delivery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message_delivery
    assert_response :success
  end

  test "should update message_delivery" do
    put :update, id: @message_delivery, message_delivery: {  }
    assert_redirected_to message_delivery_path(assigns(:message_delivery))
  end

  test "should destroy message_delivery" do
    assert_difference('MessageDelivery.count', -1) do
      delete :destroy, id: @message_delivery
    end

    assert_redirected_to message_deliveries_path
  end
end
