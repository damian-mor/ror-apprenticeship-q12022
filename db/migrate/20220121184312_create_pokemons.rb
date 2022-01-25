class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.boolean :is_baby
      t.boolean :is_legendary
      t.boolean :is_mythical
      t.boolean :forms_switchable
      t.boolean :is_default
      t.references :variety_of_pokemon, foreign_key: { to_table: :pokemons }
      t.references :evolves_to_pokemon, foreign_key: { to_table: :pokemons }

      t.timestamps
    end
  end
end
