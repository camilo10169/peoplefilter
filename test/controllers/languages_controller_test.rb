require 'test_helper'

class LanguagesControllerTest < ActionController::TestCase
  setup do
    @language = languages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:languages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create language" do
    assert_difference('Language.count') do
      post :create, language: { description: @language.description, domain: @language.domain, institute: @language.institute, name: @language.name, person_id: @language.person_id }
    end

    assert_redirected_to language_path(assigns(:language))
  end

  test "should show language" do
    get :show, id: @language
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @language
    assert_response :success
  end

  test "should update language" do
    patch :update, id: @language, language: { description: @language.description, domain: @language.domain, institute: @language.institute, name: @language.name, person_id: @language.person_id }
    assert_redirected_to language_path(assigns(:language))
  end

  test "should destroy language" do
    assert_difference('Language.count', -1) do
      delete :destroy, id: @language
    end

    assert_redirected_to languages_path
  end
end
