class AddTitleToWorkoutSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :workout_sessions, :title, :string
  end
end
