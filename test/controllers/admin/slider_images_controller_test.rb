require 'test_helper'

class Admin::SliderImagesControllerTest < ActionController::TestCase
  setup do
    @admin_slider_image = admin_slider_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_slider_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_slider_image" do
    assert_difference('Admin::SliderImage.count') do
      post :create, admin_slider_image: { avatar: @admin_slider_image.avatar }
    end

    assert_redirected_to admin_slider_image_path(assigns(:admin_slider_image))
  end

  test "should show admin_slider_image" do
    get :show, id: @admin_slider_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_slider_image
    assert_response :success
  end

  test "should update admin_slider_image" do
    patch :update, id: @admin_slider_image, admin_slider_image: { avatar: @admin_slider_image.avatar }
    assert_redirected_to admin_slider_image_path(assigns(:admin_slider_image))
  end

  test "should destroy admin_slider_image" do
    assert_difference('Admin::SliderImage.count', -1) do
      delete :destroy, id: @admin_slider_image
    end

    assert_redirected_to admin_slider_images_path
  end
end
