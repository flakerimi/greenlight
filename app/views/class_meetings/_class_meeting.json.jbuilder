json.extract! class_meeting, :id, :name, :student_id, :teacher_id, :start_time, :end_time, :created_at, :updated_at
json.url class_meeting_url(class_meeting, format: :json)
