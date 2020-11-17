class PokemonSpeciesController < ApplicationController
  def index
    @search = PokemonSpecy.search(params[:q])
    @pokemon_species = @search.result.order("id").page(params[:page])
  end

  def show
    @pokemon_specy = PokemonSpecy.includes(:pokemons).find(params[:id])
  end
end
