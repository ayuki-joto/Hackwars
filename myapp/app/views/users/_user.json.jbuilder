json.extract! user, :id, :name, :area, :schooltype, :school, :schoolgrade, :subject, :email, :created_at, :updated_at
json.url user_url(user, format: :json)