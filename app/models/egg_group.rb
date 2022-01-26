class EggGroup < ApplicationRecord
  has_many :egg_groups_pokemons
  has_many :pokemons, through: :egg_groups_pokemons
end
