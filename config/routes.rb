Rails.application.routes.draw do

  get 'noninscris/index'

  resources :students
  get 'students/statu'
  resources :classrooms
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
