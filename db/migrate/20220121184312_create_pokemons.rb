class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.boolean :has_gender_differences
      t.boolean :is_baby
      t.boolean :is_legendary
      t.string :is_mythical

      t.timestamps
    end
  end
end
