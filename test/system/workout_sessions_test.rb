require "application_system_test_case"

class WorkoutSessionsTest < ApplicationSystemTestCase
  setup do
    @workout_session = workout_sessions(:one)
  end

  test "visiting the index" do
    visit workout_sessions_url
    assert_selector "h1", text: "Workout Sessions"
  end

  test "creating a Workout session" do
    visit workout_sessions_url
    click_on "New Workout Session"

    fill_in "End time", with: @workout_session.end_time
    fill_in "Start time", with: @workout_session.start_time
    fill_in "User", with: @workout_session.user_id
    fill_in "When", with: @workout_session.when
    click_on "Create Workout session"

    assert_text "Workout session was successfully created"
    click_on "Back"
  end

  test "updating a Workout session" do
    visit workout_sessions_url
    click_on "Edit", match: :first

    fill_in "End time", with: @workout_session.end_time
    fill_in "Start time", with: @workout_session.start_time
    fill_in "User", with: @workout_session.user_id
    fill_in "When", with: @workout_session.when
    click_on "Update Workout session"

    assert_text "Workout session was successfully updated"
    click_on "Back"
  end

  test "destroying a Workout session" do
    visit workout_sessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout session was successfully destroyed"
  end
end
