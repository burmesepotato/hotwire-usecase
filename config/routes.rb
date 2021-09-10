Rails.application.routes.draw do
  resources :applicants do
    resources :publications
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
