Rails.application.routes.draw do
  get 'pokemon_species/index'
  get 'pokemon_species/show'
  resources :types, only: %i[index show]
  resources :pokemons, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
