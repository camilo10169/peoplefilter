require 'test_helper'

class NoFormalEducationsControllerTest < ActionController::TestCase
  setup do
    @no_formal_education = no_formal_educations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:no_formal_educations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create no_formal_education" do
    assert_difference('NoFormalEducation.count') do
      post :create, no_formal_education: { area: @no_formal_education.area, city: @no_formal_education.city, country: @no_formal_education.country, date_end: @no_formal_education.date_end, date_start: @no_formal_education.date_start, degree: @no_formal_education.degree, department: @no_formal_education.department, description: @no_formal_education.description, institute: @no_formal_education.institute, person_id: @no_formal_education.person_id, time_intensity: @no_formal_education.time_intensity, type_study: @no_formal_education.type_study, validated: @no_formal_education.validated }
    end

    assert_redirected_to no_formal_education_path(assigns(:no_formal_education))
  end

  test "should show no_formal_education" do
    get :show, id: @no_formal_education
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @no_formal_education
    assert_response :success
  end

  test "should update no_formal_education" do
    patch :update, id: @no_formal_education, no_formal_education: { area: @no_formal_education.area, city: @no_formal_education.city, country: @no_formal_education.country, date_end: @no_formal_education.date_end, date_start: @no_formal_education.date_start, degree: @no_formal_education.degree, department: @no_formal_education.department, description: @no_formal_education.description, institute: @no_formal_education.institute, person_id: @no_formal_education.person_id, time_intensity: @no_formal_education.time_intensity, type_study: @no_formal_education.type_study, validated: @no_formal_education.validated }
    assert_redirected_to no_formal_education_path(assigns(:no_formal_education))
  end

  test "should destroy no_formal_education" do
    assert_difference('NoFormalEducation.count', -1) do
      delete :destroy, id: @no_formal_education
    end

    assert_redirected_to no_formal_educations_path
  end
end
