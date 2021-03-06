Rails.application.routes.draw do
  resources :types, only: %i[index show]
  resources :pokemons, only: %i[index show]
  resources :pokemon_species, only: %i[index show]
  resources :generations, only: %i[index show]
  resources :pokedexes, only: %i[index show]
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
