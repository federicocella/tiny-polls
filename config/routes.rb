Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "polls#index"
  #get "/polls/new", to: "polls#new"
  #get "/polls/:id", to: "polls#edit"
  delete "/polls/:id", to: "polls#destroy"
  resources :polls do
    resource :choices
  end

end
