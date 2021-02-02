Rails.application.routes.draw do
  resources :person_affiliations
  resources :person_locations
  resources :locations
  resources :affiliations
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
