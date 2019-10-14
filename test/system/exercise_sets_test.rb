require "application_system_test_case"

class ExerciseSetsTest < ApplicationSystemTestCase
  setup do
    @exercise_set = exercise_sets(:one)
  end

  test "visiting the index" do
    visit exercise_sets_url
    assert_selector "h1", text: "Exercise Sets"
  end

  test "creating a Exercise set" do
    visit exercise_sets_url
    click_on "New Exercise Set"

    fill_in "Reps", with: @exercise_set.reps
    fill_in "Weight", with: @exercise_set.weight
    fill_in "Workout exercise", with: @exercise_set.workout_exercise_id
    click_on "Create Exercise set"

    assert_text "Exercise set was successfully created"
    click_on "Back"
  end

  test "updating a Exercise set" do
    visit exercise_sets_url
    click_on "Edit", match: :first

    fill_in "Reps", with: @exercise_set.reps
    fill_in "Weight", with: @exercise_set.weight
    fill_in "Workout exercise", with: @exercise_set.workout_exercise_id
    click_on "Update Exercise set"

    assert_text "Exercise set was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercise set" do
    visit exercise_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercise set was successfully destroyed"
  end
end
