Rails.application.routes.draw do

  resources :req_ord_lines
  resources :flows do
    post :create_workflow, on: :collection
  end

  resources :fileracks
  resources :req_ord_mats do
    get 'ajax_matnr', on: :collection
  end

  resources :req_ord_sups
  resources :req_ords do
    get :check_matkl, on: :collection
    get :new_avls, on: :member
    post :create_avls, on: :collection
    get :new_mats, on: :member
    post :new_mats_part_2, on: :member
    post :create_mats, on: :collection
    get :start_workflow, on: :member
  end

  resources :avls do
    get :create_via_excel, on: :collection
    post :update_via_excel, on: :collection
  end

  resources :selects do
    get :mat_grp, on: :collection
    get :user, on: :collection
  end

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
