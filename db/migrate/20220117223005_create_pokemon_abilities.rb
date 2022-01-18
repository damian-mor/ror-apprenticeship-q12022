class CreatePokemonAbilities < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_abilities do |t|
      t.boolean :is_hidden
      t.integer :slot

      t.timestamps
    end
  end
end
