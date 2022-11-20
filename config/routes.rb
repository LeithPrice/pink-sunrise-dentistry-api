Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 
  scope '/api' do
    resources :users, param: :username
    resources :users, param: :username, only: [:show] 
      resources :users, param: :username, only: [:index] do
        resources :bookings, only: [:index]
      end
      resources :atend, only: [:index]
      resources :doctors, only: [:show, :index] do
        resources :appointment, only: [:index, :show]
        resources :bookings, only: [:index, :update]
      end
    get '/doctors/;id/bookings', to: 'bookings#index'
    put '/doctors/:id/bookings', to: 'bookings#update'
    # post '/doctors/:id/bookings', to: 'bookings#create'
    get '/bookings', to: 'bookings#show'
    post '/bookings', to: 'bookings#create'
    get '/bookings/:id', to: 'bookings#show'
    put '/bookings/:id', to: 'bookings#update'
    delete '/bookings/:id', to: 'bookings#destroy'
    scope '/auth' do
      post '/login', to: 'authentication#login'
    end
  end


end