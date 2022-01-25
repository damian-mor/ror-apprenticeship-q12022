class Pokemon < ApplicationRecord
  # One-to-many relationship (self-join) between Pokemon and Pokemon(Variant)
  has_many :variants, class_name: 'Pokemon', foreign_key: :variety_of_pokemon_id
  belongs_to :origin, class_name: 'Pokemon', optional: true, foreign_key: :variety_of_pokemon_id
  
  # One-to-one relationship (self-join) between Pokemon and Pokemon(Evolution)
  has_one :evolution, class_name: 'Pokemon', foreign_key: :evolves_to_pokemon_id
  belongs_to :org_evolution, class_name: 'Pokemon', optional: true, foreign_key: :evolves_to_pokemon_id

  # One-to-many relationship between EggGroup and Pokemon
  belongs_to :egg_group

  # Data validations
end
