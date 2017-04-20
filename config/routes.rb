Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"

  resources :users do
      resources :posts, shallow: true
  end

end
