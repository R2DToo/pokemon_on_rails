class Generation < ApplicationRecord
  has_many :pokemon_species

  validates :name, :region, presence: true
  validates :region, length: { minimum: 3 }
end
