Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get "tasks/:id" , to: "tasks#show"
  # post "tasks" , to: "tasks#create"
  # put "tasks/:id", to: "tasks#update"
  # delete "tasks/:id" , to: "tasks#destroy"
  
  # #index用
  # get "tasks" , to: "tasks#index"
  # #new用
  # get "tasks/new" to: "tasks#new"
  # #edit用
  # get "rasks/:id/edit", to:"tasks#edit"
  
  root to: "tasks#index"
  resources :tasks

end
