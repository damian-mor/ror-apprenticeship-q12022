json.extract! pokemon, :id, :name, :has_gender_differences, :is_baby, :is_legendary, :is_mythical, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
