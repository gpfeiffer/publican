require 'test_helper'

class PublicationsControllerTest < ActionController::TestCase
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post :create, publication: { arxiv: @publication.arxiv, author: @publication.author, data: @publication.data, doi: @publication.doi, isbn: @publication.isbn, mr: @publication.mr, owp: @publication.owp, page_one_url: @publication.page_one_url, title: @publication.title, url: @publication.url, zbl: @publication.zbl }
    end

    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should show publication" do
    get :show, id: @publication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publication
    assert_response :success
  end

  test "should update publication" do
    patch :update, id: @publication, publication: { arxiv: @publication.arxiv, author: @publication.author, data: @publication.data, doi: @publication.doi, isbn: @publication.isbn, mr: @publication.mr, owp: @publication.owp, page_one_url: @publication.page_one_url, title: @publication.title, url: @publication.url, zbl: @publication.zbl }
    assert_redirected_to publication_path(assigns(:publication))
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete :destroy, id: @publication
    end

    assert_redirected_to publications_path
  end
end
