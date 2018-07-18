Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/buildings', to: 'buildings#index'
      post '/buildings', to: 'buildings#create'
      get '/buildings/:id', to: 'buildings#show'
    end
  end

end
