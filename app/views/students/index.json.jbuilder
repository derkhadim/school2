json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :birth_date, :status, :user_id, :classroom_id
  json.url student_url(student, format: :json)
end
