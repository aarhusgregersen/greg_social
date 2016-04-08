require 'test_helper'

class TestpagesControllerTest < ActionController::TestCase
  setup do
    @testpage = testpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testpage" do
    assert_difference('Testpage.count') do
      post :create, testpage: {  }
    end

    assert_redirected_to testpage_path(assigns(:testpage))
  end

  test "should show testpage" do
    get :show, id: @testpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testpage
    assert_response :success
  end

  test "should update testpage" do
    patch :update, id: @testpage, testpage: {  }
    assert_redirected_to testpage_path(assigns(:testpage))
  end

  test "should destroy testpage" do
    assert_difference('Testpage.count', -1) do
      delete :destroy, id: @testpage
    end

    assert_redirected_to testpages_path
  end
end
