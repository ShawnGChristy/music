require 'test_helper'

class ArtisControllerTest < ActionController::TestCase
  setup do
    @arti = artis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arti" do
    assert_difference('Arti.count') do
      post :create, arti: { name: @arti.name }
    end

    assert_redirected_to arti_path(assigns(:arti))
  end

  test "should show arti" do
    get :show, id: @arti
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arti
    assert_response :success
  end

  test "should update arti" do
    patch :update, id: @arti, arti: { name: @arti.name }
    assert_redirected_to arti_path(assigns(:arti))
  end

  test "should destroy arti" do
    assert_difference('Arti.count', -1) do
      delete :destroy, id: @arti
    end

    assert_redirected_to artis_path
  end
end
