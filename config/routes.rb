Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :days, only: [:index]
        
    resources :tasks, only: [:index, :create, :update, :destroy] do
      resources :migrations, only: [:create]
    end


  end
end
