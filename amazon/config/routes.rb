Rails.application.routes.draw do

  resources :users

  resources :sessions do
    delete :destroy, on: :collection
  end

  get 'welcome/index'
  root 'welcome#index'


  resources :products do
    resources :comments, only: [:create, :destroy]
  end

end
