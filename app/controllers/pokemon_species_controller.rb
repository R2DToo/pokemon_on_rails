class PokemonSpeciesController < ApplicationController
  def index
    @pokemon_species = PokemonSpecy.order("id")
  end

  def show
    @pokemon_specy = PokemonSpecy.includes(:pokemons).find(params[:id])
  end
end
