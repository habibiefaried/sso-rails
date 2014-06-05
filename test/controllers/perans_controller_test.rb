require 'test_helper'

class PeransControllerTest < ActionController::TestCase
  setup do
    @peran = perans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peran" do
    assert_difference('Peran.count') do
      post :create, peran: { jabatan: @peran.jabatan, peran: @peran.peran }
    end

    assert_redirected_to peran_path(assigns(:peran))
  end

  test "should show peran" do
    get :show, id: @peran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peran
    assert_response :success
  end

  test "should update peran" do
    patch :update, id: @peran, peran: { jabatan: @peran.jabatan, peran: @peran.peran }
    assert_redirected_to peran_path(assigns(:peran))
  end

  test "should destroy peran" do
    assert_difference('Peran.count', -1) do
      delete :destroy, id: @peran
    end

    assert_redirected_to perans_path
  end
end
