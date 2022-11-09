Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # scope '/api' do
  #   resources :users, param: :username
  #   get '/doctors', to: 'doctors#index'
  #   get '/bookings', to: 'bookings#index'
  #   post '/bookings', to: 'bookings#create'
  #   get '/bookings/:id', to: 'bookings#show'
  #   put '/bookings/:id', to: 'bookings#update'
  #   delete '/bookings/:id', to: 'bookings#destroy'
  #   scope '/auth' do
  #     post '/login', to: 'authentication#login'
  #   end
  # end
  
  scope '/api' do
    resources :users, param: :username
    resources :user, only: [:show] 
      resources :user, only: [:index] do
        resources :booking, only: [:index]
      end
      resources :specialization, only: [:show, :index]
      resources :atend, only: [:index]
      resources :doctor, only: [:show, :index] do
        resources :appointment, only: [:index, :show]
        resources :booking, only: [:index, :update]
      end
    get '/doctors', to: 'doctors#index'
    get '/atend', to: 'atend#index'
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