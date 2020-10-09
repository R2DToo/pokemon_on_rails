class Pokemon < ApplicationRecord
  has_many :pokemon_types
  has_many :types, through: :pokemon_types
  belongs_to :pokemon_specy

  validates :name, :height, :weight, presence: true
  validates :name, uniqueness: true
end
