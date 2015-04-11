require 'test_helper'

class SingleAppsControllerTest < ActionController::TestCase
  setup do
    @single_app = single_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:single_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create single_app" do
    assert_difference('SingleApp.count') do
      post :create, single_app: { description: @single_app.description, image: @single_app.image, name: @single_app.name, price: @single_app.price, url: @single_app.url }
    end

    assert_redirected_to single_app_path(assigns(:single_app))
  end

  test "should show single_app" do
    get :show, id: @single_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @single_app
    assert_response :success
  end

  test "should update single_app" do
    patch :update, id: @single_app, single_app: { description: @single_app.description, image: @single_app.image, name: @single_app.name, price: @single_app.price, url: @single_app.url }
    assert_redirected_to single_app_path(assigns(:single_app))
  end

  test "should destroy single_app" do
    assert_difference('SingleApp.count', -1) do
      delete :destroy, id: @single_app
    end

    assert_redirected_to single_apps_path
  end
end
