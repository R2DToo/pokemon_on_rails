class Type < ApplicationRecord
  has_many :pokemon_types
  has_many :pokemons, through: :pokemon_types
  validates :name, presence: true
  validates :name, length: { minimum: 2 }
end
