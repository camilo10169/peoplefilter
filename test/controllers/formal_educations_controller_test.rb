require 'test_helper'

class FormalEducationsControllerTest < ActionController::TestCase
  setup do
    @formal_education = formal_educations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formal_educations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formal_education" do
    assert_difference('FormalEducation.count') do
      post :create, formal_education: { area: @formal_education.area, city: @formal_education.city, country: @formal_education.country, date_end: @formal_education.date_end, date_start: @formal_education.date_start, degree: @formal_education.degree, department: @formal_education.department, institute: @formal_education.institute, level: @formal_education.level, person_id: @formal_education.person_id, study_state: @formal_education.study_state, validated: @formal_education.validated }
    end

    assert_redirected_to formal_education_path(assigns(:formal_education))
  end

  test "should show formal_education" do
    get :show, id: @formal_education
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formal_education
    assert_response :success
  end

  test "should update formal_education" do
    patch :update, id: @formal_education, formal_education: { area: @formal_education.area, city: @formal_education.city, country: @formal_education.country, date_end: @formal_education.date_end, date_start: @formal_education.date_start, degree: @formal_education.degree, department: @formal_education.department, institute: @formal_education.institute, level: @formal_education.level, person_id: @formal_education.person_id, study_state: @formal_education.study_state, validated: @formal_education.validated }
    assert_redirected_to formal_education_path(assigns(:formal_education))
  end

  test "should destroy formal_education" do
    assert_difference('FormalEducation.count', -1) do
      delete :destroy, id: @formal_education
    end

    assert_redirected_to formal_educations_path
  end
end
