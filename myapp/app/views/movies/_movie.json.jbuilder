json.extract! movie, :id, :name, :subject, :school-type, :school, :school-grade, :content, :created_at, :updated_at
json.url movie_url(movie, format: :json)