require "application_system_test_case"

class WorkoutExercisesTest < ApplicationSystemTestCase
  setup do
    @workout_exercise = workout_exercises(:one)
  end

  test "visiting the index" do
    visit workout_exercises_url
    assert_selector "h1", text: "Workout Exercises"
  end

  test "creating a Workout exercise" do
    visit workout_exercises_url
    click_on "New Workout Exercise"

    fill_in "Exercise", with: @workout_exercise.exercise_id
    click_on "Create Workout exercise"

    assert_text "Workout exercise was successfully created"
    click_on "Back"
  end

  test "updating a Workout exercise" do
    visit workout_exercises_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @workout_exercise.exercise_id
    click_on "Update Workout exercise"

    assert_text "Workout exercise was successfully updated"
    click_on "Back"
  end

  test "destroying a Workout exercise" do
    visit workout_exercises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout exercise was successfully destroyed"
  end
end
