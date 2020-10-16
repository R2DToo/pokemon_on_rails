class PokedexesController < ApplicationController
  def index
    @pokedexes = Pokedex.order("id")
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
