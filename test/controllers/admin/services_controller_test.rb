require 'test_helper'

class Admin::ServicesControllerTest < ActionController::TestCase
  setup do
    @admin_service = admin_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_service" do
    assert_difference('Admin::Service.count') do
      post :create, admin_service: { avatar: @admin_service.avatar, name: @admin_service.name }
    end

    assert_redirected_to admin_service_path(assigns(:admin_service))
  end

  test "should show admin_service" do
    get :show, id: @admin_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_service
    assert_response :success
  end

  test "should update admin_service" do
    patch :update, id: @admin_service, admin_service: { avatar: @admin_service.avatar, name: @admin_service.name }
    assert_redirected_to admin_service_path(assigns(:admin_service))
  end

  test "should destroy admin_service" do
    assert_difference('Admin::Service.count', -1) do
      delete :destroy, id: @admin_service
    end

    assert_redirected_to admin_services_path
  end
end
