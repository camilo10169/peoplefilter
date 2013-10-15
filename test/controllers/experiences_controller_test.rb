require 'test_helper'

class ExperiencesControllerTest < ActionController::TestCase
  setup do
    @experience = experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experience" do
    assert_difference('Experience.count') do
      post :create, experience: { actual_job: @experience.actual_job, area: @experience.area, city: @experience.city, company: @experience.company, date_end: @experience.date_end, date_start: @experience.date_start, function_performed: @experience.function_performed, immediate_boss: @experience.immediate_boss, person_id: @experience.person_id, phone: @experience.phone, position: @experience.position, position_equivalent: @experience.position_equivalent, position_level: @experience.position_level, sector: @experience.sector, time_experience: @experience.time_experience, validated: @experience.validated }
    end

    assert_redirected_to experience_path(assigns(:experience))
  end

  test "should show experience" do
    get :show, id: @experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experience
    assert_response :success
  end

  test "should update experience" do
    patch :update, id: @experience, experience: { actual_job: @experience.actual_job, area: @experience.area, city: @experience.city, company: @experience.company, date_end: @experience.date_end, date_start: @experience.date_start, function_performed: @experience.function_performed, immediate_boss: @experience.immediate_boss, person_id: @experience.person_id, phone: @experience.phone, position: @experience.position, position_equivalent: @experience.position_equivalent, position_level: @experience.position_level, sector: @experience.sector, time_experience: @experience.time_experience, validated: @experience.validated }
    assert_redirected_to experience_path(assigns(:experience))
  end

  test "should destroy experience" do
    assert_difference('Experience.count', -1) do
      delete :destroy, id: @experience
    end

    assert_redirected_to experiences_path
  end
end
