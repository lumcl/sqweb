Rails.application.routes.draw do
  resources :maras

  resources :burnins do
    get :menu, on: :collection
    get :aufnr_get, on: :collection
    post :aufnr_post, on: :collection
    get :aufnr_ajax, on: :collection
    get :start_get, on: :collection
    get :start_ajax, on: :collection
    get :end_get, on: :collection
    get :end_ajax, on: :collection
    get :pack_get, on: :collection
    get :pack_ajax, on: :collection
    get :summary_ajax, on: :collection
  end

  resources :systabs

  # resources :uploads do
  #   get :direct_import, on: :collection
  #   get :direct_export, on: :collection
  #   get :general_export, on: :collection
  #   get :general_import, on: :collection
  # end

  root to: 'visitors#index'
  devise_for :users
end
