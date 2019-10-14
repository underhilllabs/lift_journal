require 'test_helper'

class WorkoutSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_session = workout_sessions(:one)
  end

  test "should get index" do
    get workout_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_workout_session_url
    assert_response :success
  end

  test "should create workout_session" do
    assert_difference('WorkoutSession.count') do
      post workout_sessions_url, params: { workout_session: { end_time: @workout_session.end_time, start_time: @workout_session.start_time, user_id: @workout_session.user_id, when: @workout_session.when } }
    end

    assert_redirected_to workout_session_url(WorkoutSession.last)
  end

  test "should show workout_session" do
    get workout_session_url(@workout_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_session_url(@workout_session)
    assert_response :success
  end

  test "should update workout_session" do
    patch workout_session_url(@workout_session), params: { workout_session: { end_time: @workout_session.end_time, start_time: @workout_session.start_time, user_id: @workout_session.user_id, when: @workout_session.when } }
    assert_redirected_to workout_session_url(@workout_session)
  end

  test "should destroy workout_session" do
    assert_difference('WorkoutSession.count', -1) do
      delete workout_session_url(@workout_session)
    end

    assert_redirected_to workout_sessions_url
  end
end
