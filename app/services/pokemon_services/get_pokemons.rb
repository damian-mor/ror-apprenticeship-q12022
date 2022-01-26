module PokemonServices
  class GetPokemons
    
    def initialize(offset, limit)
      @url = "https://pokeapi.co/api/v2/pokemon-species?offset=#{offset}&limit=#{limit}"
    end

    def call
      response = HTTParty.get @url
      result = []
      response['results'].each do |pokemon|
        response = HTTParty.get pokemon['url']

        attrib = %w[name is_legendary is_baby is_mythical forms_switchable]
        pk_specie = attrib.map { |a| [a.to_sym, response[a] ] }.to_h

        others = %w[evolves_from_species varieties egg_groups]
        o_obj = others.map { |o| [o.to_sym, response[o]] }.to_h

        result.push [pk_specie, o_obj]
      end
      return result
    end
  end
end
