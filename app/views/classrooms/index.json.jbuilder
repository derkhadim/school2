json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :name
  json.url classroom_url(classroom, format: :json)
end
