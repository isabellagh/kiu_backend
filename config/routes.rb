Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :clients
      resources :trainers
    end
  end
end
