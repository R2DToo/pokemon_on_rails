class PokemonSpecy < ApplicationRecord
  belongs_to :generation
  has_many :pokemons
  has_many :pokemon_types, through: :pokemons
  has_many :types, through: :pokemon_types
  has_many :pokedex_entries
  has_many :pokedexes, through: :pokedex_entries

  validates :id, presence: true
  validates :id, numericality: true
end
