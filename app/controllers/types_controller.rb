class TypesController < ApplicationController
  def index
    @types = Type.all.order("id")
  end

  def show
    @type = Type.includes(:pokemon_types).includes(:pokemons).find(params[:id])
  end
end
