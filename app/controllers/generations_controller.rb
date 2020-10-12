class GenerationsController < ApplicationController
  def index
    @generations = Generation.order("id")
  end

  def show
    @generation = Generation.includes(:pokemon_species).find(params[:id])
  end
end
