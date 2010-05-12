require 'test_helper'

class ConvosControllerTest < ActionController::TestCase
  setup do
    @convo = convos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convo" do
    assert_difference('Convo.count') do
      post :create, :convo => @convo.attributes
    end

    assert_redirected_to convo_path(assigns(:convo))
  end

  test "should show convo" do
    get :show, :id => @convo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @convo.to_param
    assert_response :success
  end

  test "should update convo" do
    put :update, :id => @convo.to_param, :convo => @convo.attributes
    assert_redirected_to convo_path(assigns(:convo))
  end

  test "should destroy convo" do
    assert_difference('Convo.count', -1) do
      delete :destroy, :id => @convo.to_param
    end

    assert_redirected_to convos_path
  end
end
