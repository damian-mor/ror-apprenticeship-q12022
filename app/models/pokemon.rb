class Pokemon < ApplicationRecord
  has_many :varieties, class_name: 'Pokemon', foreign_key: :variety_of_pokemon_id
  belongs_to :origin, class_name: 'Pokemon', optional: true, foreign_key: :variety_of_pokemon_id

  has_one :evolution, class_name: 'Pokemon', foreign_key: :evolves_to_pokemon_id
  belongs_to :org_evolution, class_name: 'Pokemon', optional: true, foreign_key: :evolves_to_pokemon_id

  has_many :egg_groups_pokemons
  has_many :egg_groups, through: :egg_groups_pokemons
end
