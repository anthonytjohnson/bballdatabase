json.extract! player, :id, :first_name, :last_name, :position, :height, :weight, :birth_date, :colleges, :draft, :image_url, :created_at, :updated_at
json.url player_url(player, format: :json)
