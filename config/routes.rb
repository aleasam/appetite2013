Appetite::Application.routes.draw do
  resources :ofreces


  get "administrador/index"

  post "usuarios/new"=>'usuarios#new'

  resources :usuarios


  resources :comentarios


  resources :publicidads


  resources :productos


  resources :categoria


  resources :punto_de_venta


  resources :ciudades


  resources :restaurantes
  get 'usuarios/true'=>'usuarios#true'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end