require 'test_helper'

class Company1sControllerTest < ActionController::TestCase
  setup do
    @company1 = company1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company1" do
    assert_difference('Company1.count') do
      post :create, company1: { manager: @company1.manager, name: @company1.name, status: @company1.status, terms: @company1.terms }
    end

    assert_redirected_to company1_path(assigns(:company1))
  end

  test "should show company1" do
    get :show, id: @company1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company1
    assert_response :success
  end

  test "should update company1" do
    patch :update, id: @company1, company1: { manager: @company1.manager, name: @company1.name, status: @company1.status, terms: @company1.terms }
    assert_redirected_to company1_path(assigns(:company1))
  end

  test "should destroy company1" do
    assert_difference('Company1.count', -1) do
      delete :destroy, id: @company1
    end

    assert_redirected_to company1s_path
  end
end
