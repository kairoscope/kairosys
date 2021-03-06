require 'test_helper'

class SitePagesControllerTest < ActionController::TestCase
  setup do
    @site_page = site_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_page" do
    assert_difference('SitePage.count') do
      post :create, site_page: { content: @site_page.content, title: @site_page.title }
    end

    assert_redirected_to site_page_path(assigns(:site_page))
  end

  test "should show site_page" do
    get :show, id: @site_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_page
    assert_response :success
  end

  test "should update site_page" do
    patch :update, id: @site_page, site_page: { content: @site_page.content, title: @site_page.title }
    assert_redirected_to site_page_path(assigns(:site_page))
  end

  test "should destroy site_page" do
    assert_difference('SitePage.count', -1) do
      delete :destroy, id: @site_page
    end

    assert_redirected_to site_pages_path
  end
end
