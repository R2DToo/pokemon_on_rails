class PokedexesController < ApplicationController
  def index
    @search = Pokedex.search(params[:q])
    @pokedexes = @search.result.order("id").page(params[:page])
  end

  def show
    @pokedex = Pokedex.includes(:pokedex_entries)
                      .includes(:pokemon_species)
                      .includes(:pokemons)
                      .includes(:pokemon_types)
                      .includes(:types)
                      .find(params[:id])
  end
end
