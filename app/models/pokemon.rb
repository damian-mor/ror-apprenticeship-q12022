class Pokemon < ApplicationRecord
  has_many :variants, class_name: 'Pokemon', foreign_key: :variety_of_pokemon_id
  belongs_to :origin, class_name: 'Pokemon', optional: true, foreign_key: :variety_of_pokemon_id

  has_one :evolution, class_name: 'Pokemon', foreign_key: :evolves_to_pokemon_id
  belongs_to :org_evolution, class_name: 'Pokemon', optional: true, foreign_key: :evolves_to_pokemon_id

  belongs_to :egg_group
end
