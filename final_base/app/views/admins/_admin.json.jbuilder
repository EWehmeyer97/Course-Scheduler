json.extract! admin, :id, :Email, :Name, :Password, :Course_num, :Manage_year,:Title, :created_at, :updated_at
json.url admin_url(admin, format: :json)
