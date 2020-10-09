class Pokedex < ApplicationRecord
  has_many :pokedex_entries
  has_many :pokemon_species, through: :pokedex_entries

  validates :name, :region, presence: true
  validates :region, length: { minimum: 3 }
end
