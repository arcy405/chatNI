Rails.application.routes.draw do
  resources :room_messages
  resources :rooms
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 

  root controller: :rooms, action: :index

  
  
end
