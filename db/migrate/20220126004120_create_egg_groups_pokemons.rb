class CreateEggGroupsPokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :egg_groups_pokemons do |t|
      t.references :pokemon
      t.references :egg_group
      
      t.timestamps
    end
  end
end
