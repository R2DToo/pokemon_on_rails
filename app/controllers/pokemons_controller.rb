class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.order("id").page(params[:page])
  end

  def show
    @pokemon = Pokemon.includes(:pokemon_specy).includes(:pokemon_types).includes(:types).find(params[:id])
  end
end
