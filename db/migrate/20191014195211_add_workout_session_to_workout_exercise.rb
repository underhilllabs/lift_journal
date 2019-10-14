class AddWorkoutSessionToWorkoutExercise < ActiveRecord::Migration[6.0]
  def change
    add_column :workout_exercises, :workout_session_id, :integer
  end
end
