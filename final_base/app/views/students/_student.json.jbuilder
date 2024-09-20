json.extract! student, :id, :Email, :Name, :Password, :Graduate_year,:Major, :created_at, :updated_at
json.url student_url(student, format: :json)
