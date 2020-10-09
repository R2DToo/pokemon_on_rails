class PokedexEntry < ApplicationRecord
  belongs_to :pokedex
  belongs_to :pokemon_specy

  validates :pokedexnumber, :pokemon_specy_id, :pokedex_id, presence: true
  validates :pokedexnumber, :pokemon_specy_id, :pokedex_id, numericality: true
end
