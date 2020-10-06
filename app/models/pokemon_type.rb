class PokemonType < ApplicationRecord
  belongs_to :type
  belongs_to :pokemon

  validates :id, presence: true
  validates :id, numericality: true
end
