class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.order("id")
  end

  def show
    @pokemon = Pokemon.includes(:pokemon_specy).includes(:pokemon_types).includes(:types).find(params[:id])
  end
end
