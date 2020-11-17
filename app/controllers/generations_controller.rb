class GenerationsController < ApplicationController
  def index
    @search = Generation.search(params[:q])
    @generations = @search.result.order("id").page(params[:page])
  end

  def show
    @generation = Generation.includes(:pokemon_species).find(params[:id])
  end
end
