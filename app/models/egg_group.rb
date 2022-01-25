class EggGroup < ApplicationRecord
  # One-to-many relationship between EggGroup and Pokemon
  has_many :pokemons

  # Data validations
  
end
