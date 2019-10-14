json.extract! workout_session, :id, :user_id, :when, :start_time, :end_time, :created_at, :updated_at
json.url workout_session_url(workout_session, format: :json)
