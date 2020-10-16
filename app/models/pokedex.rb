class Pokedex < ApplicationRecord
  has_many :pokedex_entries
  has_many :pokemon_species, through: :pokedex_entries
  has_many :pokemons, through: :pokemon_species
  has_many :pokemon_types, through: :pokemons
  has_many :types, through: :pokemon_types

  validates :name, :id, presence: true
  validates :name, length: { minimum: 3 }
end
