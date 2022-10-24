Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope '/api' do
    resources :users, param: :username
    get '/bookings', to: 'bookings#index'
    post '/bookings', to: 'bookings#create'
    get '/bookings/:id', to: 'bookings#show'
    put '/bookings/:id', to: 'bookings#update'
    delete '/bookings/:id', to: 'bookings#destroy'
    scope '/auth' do
      post '/login', to: 'authentication#login'
    end
  end
  
end