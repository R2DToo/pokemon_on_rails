class TypesController < ApplicationController
  def index
    @types = Type.order("id").page(params[:page])
  end

  def show
    @type = Type.includes(:pokemon_types).includes(:pokemons).find(params[:id])
  end
end
