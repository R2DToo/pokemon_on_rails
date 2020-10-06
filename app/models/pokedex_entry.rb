class PokedexEntry < ApplicationRecord
  belongs_to :pokedex
  belongs_to :pokemon_specy

  validates :pokedexnumber, :pokemon_species_id, :pokedexes_id, presence: true
  validates :pokedexnumber, :pokemon_species_id, :pokedexes_id, numericality: true
end
