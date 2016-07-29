json.array!(@students) do |student|
  json.extract! student, :id, :id, :name, :last_name, :sex, :tel, :email, :facultad, :project_id
  json.url student_url(student, format: :json)
end
