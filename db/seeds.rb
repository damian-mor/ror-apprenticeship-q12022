# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
pokemon_species = PokemonServices::GetPokemons.new(0, 30).call

pokemon_species.each do |data|
  specie = data[0]
  others = data[1]

  ## Check for bulk update
  pokemon = Pokemon.find_by_name(specie[:name]) || Pokemon.new(specie)

  others[:egg_groups].each do |eg|
    egg = EggGroup.find_by_name(eg[:name.to_s]) || EggGroup.create(name: eg[:name.to_s])
    pokemon.egg_groups << egg
  end

  unless others[:evolves_from_species] == nil
    ev = others[:evolves_from_species]
    evolution = Pokemon.find_by_name(ev[:name.to_s]) || Pokemon.create(name: ev[:name.to_s])
    pokemon.evolution = evolution
    evolution.org_evolution = pokemon
    evolution.save
  end


  others[:varieties].each do |var|
    if var[:pokemon.to_s][:name.to_s] == pokemon.name
      pokemon.is_default = true
    else
      variety = Pokemon.create(name: var[:pokemon.to_s][:name.to_s])
      pokemon.varieties << variety
      variety.origin = pokemon
      variety.is_default = false
      variety.save
    end
  end
  
  pokemon.save
end
