json.extract! appointment, :id, :user_id, :coach_id, :date, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
