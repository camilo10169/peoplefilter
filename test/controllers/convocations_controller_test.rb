require 'test_helper'

class ConvocationsControllerTest < ActionController::TestCase
  setup do
    @convocation = convocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convocation" do
    assert_difference('Convocation.count') do
      post :create, convocation: { amount_vacancies: @convocation.amount_vacancies, area: @convocation.area, city: @convocation.city, company_id: @convocation.company_id, department: @convocation.department, description: @convocation.description, education_level: @convocation.education_level, education_state: @convocation.education_state, gender: @convocation.gender, hierarchy: @convocation.hierarchy, language: @convocation.language, max_age: @convocation.max_age, min_age: @convocation.min_age, position: @convocation.position, subarea: @convocation.subarea }
    end

    assert_redirected_to convocation_path(assigns(:convocation))
  end

  test "should show convocation" do
    get :show, id: @convocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convocation
    assert_response :success
  end

  test "should update convocation" do
    patch :update, id: @convocation, convocation: { amount_vacancies: @convocation.amount_vacancies, area: @convocation.area, city: @convocation.city, company_id: @convocation.company_id, department: @convocation.department, description: @convocation.description, education_level: @convocation.education_level, education_state: @convocation.education_state, gender: @convocation.gender, hierarchy: @convocation.hierarchy, language: @convocation.language, max_age: @convocation.max_age, min_age: @convocation.min_age, position: @convocation.position, subarea: @convocation.subarea }
    assert_redirected_to convocation_path(assigns(:convocation))
  end

  test "should destroy convocation" do
    assert_difference('Convocation.count', -1) do
      delete :destroy, id: @convocation
    end

    assert_redirected_to convocations_path
  end
end
