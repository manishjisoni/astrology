require 'test_helper'

class Admin::AboutUsControllerTest < ActionController::TestCase
  setup do
    @admin_about_u = admin_about_us(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_about_us)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_about_u" do
    assert_difference('Admin::AboutU.count') do
      post :create, admin_about_u: { avatar: @admin_about_u.avatar, description: @admin_about_u.description, name: @admin_about_u.name }
    end

    assert_redirected_to admin_about_u_path(assigns(:admin_about_u))
  end

  test "should show admin_about_u" do
    get :show, id: @admin_about_u
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_about_u
    assert_response :success
  end

  test "should update admin_about_u" do
    patch :update, id: @admin_about_u, admin_about_u: { avatar: @admin_about_u.avatar, description: @admin_about_u.description, name: @admin_about_u.name }
    assert_redirected_to admin_about_u_path(assigns(:admin_about_u))
  end

  test "should destroy admin_about_u" do
    assert_difference('Admin::AboutU.count', -1) do
      delete :destroy, id: @admin_about_u
    end

    assert_redirected_to admin_about_us_path
  end
end
