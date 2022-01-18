class CreateAbilities < ActiveRecord::Migration[7.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.integer :pokeapi_id
      t.string :effect
      t.string :short_effect

      t.timestamps
    end
  end
end
