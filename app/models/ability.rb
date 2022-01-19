class Ability < ApplicationRecord
  has_many :abilities_pokemons
  has_many :pokemons, through: :abilities_pokemons
end
