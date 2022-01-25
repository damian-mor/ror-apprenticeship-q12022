class AddEggGroupToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_reference :pokemons, :egg_group, null: false, foreign_key: true
  end
end
