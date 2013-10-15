require 'test_helper'

class PersonalInfosControllerTest < ActionController::TestCase
  setup do
    @personal_info = personal_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_info" do
    assert_difference('PersonalInfo.count') do
      post :create, personal_info: { city_birth: @personal_info.city_birth, country_birth: @personal_info.country_birth, dpto_birth: @personal_info.dpto_birth, gender: @personal_info.gender, has_job: @personal_info.has_job, job_profile: @personal_info.job_profile, marital_status: @personal_info.marital_status, native_language: @personal_info.native_language, person_id: @personal_info.person_id, wage_aspiration: @personal_info.wage_aspiration, years_experience: @personal_info.years_experience }
    end

    assert_redirected_to personal_info_path(assigns(:personal_info))
  end

  test "should show personal_info" do
    get :show, id: @personal_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_info
    assert_response :success
  end

  test "should update personal_info" do
    patch :update, id: @personal_info, personal_info: { city_birth: @personal_info.city_birth, country_birth: @personal_info.country_birth, dpto_birth: @personal_info.dpto_birth, gender: @personal_info.gender, has_job: @personal_info.has_job, job_profile: @personal_info.job_profile, marital_status: @personal_info.marital_status, native_language: @personal_info.native_language, person_id: @personal_info.person_id, wage_aspiration: @personal_info.wage_aspiration, years_experience: @personal_info.years_experience }
    assert_redirected_to personal_info_path(assigns(:personal_info))
  end

  test "should destroy personal_info" do
    assert_difference('PersonalInfo.count', -1) do
      delete :destroy, id: @personal_info
    end

    assert_redirected_to personal_infos_path
  end
end
