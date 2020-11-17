class TypesController < ApplicationController
  def index
    @search = Type.search(params[:q])
    @types = @search.result.order("id").page(params[:page])
  end

  def show
    @type = Type.includes(:pokemon_types).includes(:pokemons).find(params[:id])
  end
end
