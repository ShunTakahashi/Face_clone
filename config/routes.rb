Rails.application.routes.draw do
  resources :users
  resources :sessions,only:[:new,:create,:destroy]

  resources :blogs do
    collection do
      post :confirm
    end
  end

  get "/" => "users#index"

end
