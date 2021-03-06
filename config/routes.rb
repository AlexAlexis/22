Rails.application.routes.draw do


  post '/rate' => 'rater#create', :as => 'rate'
  root 'books#index'
  devise_for :users

  # get 'books/new'
  # get 'books/:id'
  # get 'books/new'
  # post 'books/create'

  resources :books do
    member do
      get :delete
      get :tbutton
      get :dbutton
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
