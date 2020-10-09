# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
PokemonType.delete_all
Pokemon.delete_all
PokedexEntry.delete_all
PokemonSpecy.delete_all
Generation.delete_all
Pokedex.delete_all
Type.delete_all
all_generations = PokeApi.get(:generation)

all_generations.count.times do |i|
  i += 1
  api_generation = PokeApi.get(generation: i)
  new_generation = Generation.create(id: i, name: api_generation.name, region: api_generation.main_region.name)
  api_generation.pokemon_species.each do |species|
    new_species = new_generation.pokemon_species.create(id: species.url[42..-2])
  end
end

all_pokemon = PokeApi.get(:pokemon)

offset = 0
page_item_limit = 50
total_pages = all_pokemon.count / page_item_limit

total_pages.times do
  pokemon_page = PokeApi.get(pokemon: { limit: page_item_limit, offset: offset })
  pokemon_page.results.each do |basic_pokemon|
    pokemon_id = basic_pokemon.url[34..-2]
    api_pokemon = PokeApi.get(pokemon: pokemon_id)
    new_pokemon = Pokemon.create(id: api_pokemon.id, name: api_pokemon.name, height: api_pokemon.height, weight: api_pokemon.weight, pokemon_specy_id: api_pokemon.species.url[42..-2])
  end
  offset += 50
end
all_types = PokeApi.get(:type)
pokemon_type_id = 0

all_types.results.each do |type|
  type_id = type.url[31..-2]
  new_type = Type.create(id: type_id, name: type.name)
  pokemon_in_type = PokeApi.get(type: type_id)
  pokemon_in_type.pokemon.each do |pokemon|
    pokemon_id = pokemon.pokemon.url[34..-2]
    pokemon_type_id += 1
    new_pokemon_type = new_type.pokemon_types.create(id: pokemon_type_id, pokemon_id: pokemon_id)
  end
end
all_pokedexes = PokeApi.get(:pokedex)

offset = 0
page_item_limit = 8
total_pages = all_pokedexes.count / page_item_limit

total_pages.times do
  pokedex_page = PokeApi.get(pokedex: { limit: page_item_limit, offset: offset })
  pokedex_page.results.each do |pokedex|
    pokedex_id = pokedex.url[34..-2]
    api_pokedex = PokeApi.get(pokedex: pokedex_id)
    new_pokedex = Pokedex.create(id: api_pokedex.id, name: api_pokedex.name, region: api_pokedex.region)
    api_pokedex.pokemon_entries.each do |entry|
      new_pokedex_entry = new_pokedex.pokedex_entries.create(pokedexnumber: entry.entry_number, pokemon_specy_id: entry.pokemon_species.url[42..-2])
    end
  end
  offset += 8
end

puts "Created #{Generation.count} Generations"
puts "Created #{PokemonSpecy.count} Pokemon Species"
puts "Created #{Pokemon.count} Pokemon"
puts "Created #{Type.count} Types"
puts "Created #{PokemonType.count} Pokemon Types"
puts "Created #{Pokedex.count} Pokedexes"
puts "Created #{PokedexEntry.count} Pokedex Entries"
