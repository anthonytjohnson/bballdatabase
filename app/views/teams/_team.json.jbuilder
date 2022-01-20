json.extract! team, :id, :city, :name, :abbreviation, :image_url, :created_at, :updated_at
json.url team_url(team, format: :json)
