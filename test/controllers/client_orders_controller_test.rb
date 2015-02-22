require 'test_helper'

class ClientOrdersControllerTest < ActionController::TestCase
  setup do
    @client_order = client_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_order" do
    assert_difference('ClientOrder.count') do
      post :create, client_order: {  }
    end

    assert_redirected_to client_order_path(assigns(:client_order))
  end

  test "should show client_order" do
    get :show, id: @client_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_order
    assert_response :success
  end

  test "should update client_order" do
    patch :update, id: @client_order, client_order: {  }
    assert_redirected_to client_order_path(assigns(:client_order))
  end

  test "should destroy client_order" do
    assert_difference('ClientOrder.count', -1) do
      delete :destroy, id: @client_order
    end

    assert_redirected_to client_orders_path
  end
end
