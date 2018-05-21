Rails.application.routes.draw do
  root to: "home#index"
  resources :volunteers, except: :new
  get "hosts/new" => "volunteers#new", defaults: {type: Volunteer.types[:host]}
  get "realocators/new" => "volunteers#new", defaults: {type: Volunteer.types[:realocator]}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
