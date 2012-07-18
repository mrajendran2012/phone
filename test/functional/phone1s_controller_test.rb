require 'test_helper'

class Phone1sControllerTest < ActionController::TestCase
  setup do
    @phone1 = phone1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phone1" do
    assert_difference('Phone1.count') do
      post :create, :phone1 => { :first_name => @phone1.first_name, :last_name => @phone1.last_name, :phone_number => @phone1.phone_number }
    end

    assert_redirected_to phone1_path(assigns(:phone1))
  end

  test "should show phone1" do
    get :show, :id => @phone1
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @phone1
    assert_response :success
  end

  test "should update phone1" do
    put :update, :id => @phone1, :phone1 => { :first_name => @phone1.first_name, :last_name => @phone1.last_name, :phone_number => @phone1.phone_number }
    assert_redirected_to phone1_path(assigns(:phone1))
  end

  test "should destroy phone1" do
    assert_difference('Phone1.count', -1) do
      delete :destroy, :id => @phone1
    end

    assert_redirected_to phone1s_path
  end
end
