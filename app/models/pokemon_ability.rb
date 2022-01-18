class PokemonAbility < ApplicationRecord
  belongs_to :pokemons
  belongs_to :abilities
end
