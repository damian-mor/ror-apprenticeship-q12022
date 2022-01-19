class Pokemon < ApplicationRecord
  has_many :abilities_pokemons
  has_many :abilities, through: :abilities_pokemons
end
