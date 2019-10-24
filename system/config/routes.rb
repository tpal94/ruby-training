Rails.application.routes.draw do
  # get 'welcome/index'
  devise_for :users
  resources :projects
  resources :members
  root :to => "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
