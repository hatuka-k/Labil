require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  setup do 
    @schedule = schedules(:one)
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post :create, schedule: { event_end: @schedule.event_end, event_start: @schedule.event_start, member_id: @schedule.member_id, venue: @schedule.venue }
    end

    assert_redirected_to schedule_path(assigns(:schedule))
  end

  test "should show schedule" do
    get :show, id: @schedule
    assert_response :success
  end
    
  test "should get show" do
    get :show, id: @schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schedule
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post :create, schedule: { member_id: @schedule.member_id, event_start: @schedule.event_start, event_end: @schedule.event_end, venue: @schedule.venue }
  end
  
  test "should update schedule" do
    patch :update, id: @schedule, schedule: { member_id: @schedule.member_id, event_start: @schedule.event_start, event_end: @schedule.event_end, venue: @schedule.venue }
    assert_redirected_to schedule_path(assigns(:schedule))
  end
  
 
  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete :destroy, id: @schedule
    end
    assert_redirected_to schedules_path
  end
end
