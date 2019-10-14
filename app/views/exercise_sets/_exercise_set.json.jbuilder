json.extract! exercise_set, :id, :weight, :reps, :workout_exercise_id, :created_at, :updated_at
json.url exercise_set_url(exercise_set, format: :json)
