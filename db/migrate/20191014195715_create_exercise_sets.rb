class CreateExerciseSets < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_sets do |t|
      t.integer :weight
      t.integer :reps
      t.references :workout_exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
