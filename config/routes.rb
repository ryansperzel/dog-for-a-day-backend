Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :dogs, except: [:new, :edit, :destroy]
      resources :appointments, except: [:new, :edit]
      resources :shelters, except: [:new, :edit, :destroy]
      resources :users, except: [:new, :edit]
    end
  end
end
