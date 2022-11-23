Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#  This is all the routes in the api
  scope '/api' do
    resources :users, param: :username
    resources :users, param: :username, only: [:show] 
    get '/doctors/:id/bookings', to: 'doctors#bookings'
    put '/doctors/:id/bookings', to: 'doctors#update'
    get '/doctors/:id', to: 'doctors#show'
    get '/doctors/:id/appointments', to: 'appointments#index'
    get '/appointment/:id', to: 'appointments#show'
    get '/doctors', to: 'doctors#index'
    get '/bookings', to: 'bookings#show'
    post '/bookings', to: 'bookings#create'
    get '/bookings/:id', to: 'bookings#show'
    put '/bookings/:id', to: 'bookings#update'
    delete '/bookings/:id', to: 'bookings#destroy'
    get '/atend', to: 'atend#index'
    scope '/auth' do
      post '/login', to: 'authentication#login'
    end
  end


end