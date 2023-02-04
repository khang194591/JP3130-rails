json.extract! movie, :id, :short_description, :trailer_url, :storyline, :release_date, :languages, :country_of_origin, :production_companies, :created_at, :updated_at
json.url movie_url(movie, format: :json)
