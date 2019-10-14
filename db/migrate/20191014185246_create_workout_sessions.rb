class CreateWorkoutSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.date :when
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
