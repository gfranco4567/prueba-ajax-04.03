Rails.application.routes.draw do
  # get 'companies/index'
  devise_for :users
  resources :companies do
    resources :claims
  end

  root 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
