class Pokedex < ApplicationRecord
  has_many :pokedex_entries
  has_many :pokemon_species, through: :pokedex_entries

  validates :name, :id, presence: true
  validates :name, length: { minimum: 3 }
end
