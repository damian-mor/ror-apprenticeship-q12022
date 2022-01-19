class CreateAbilitiesPokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :abilities_pokemons do |t|
      t.belongs_to :pokemon, null: false, foreign_key: true
      t.belongs_to :ability, null: false, foreign_key: true

      t.timestamps
    end
  end
end
