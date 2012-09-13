Babs::Application.routes.draw do
  resources :messages

  resources :healthhistories

  resources :doctorspatients

  devise_for :users, :path_names =>{:sign_up => "register"}
# 
  # devise_for :models
  resources :doctors
  resources :patients
  resources :users
  resources :alergies
  resources :medications
  resources :surgicals
  root :to => 'public#home'
  
  match 'about' => 'public#about'
  match 'contact' => 'public#contact'
  match 'help' => 'public#help'


end
