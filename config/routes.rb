Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tasks#index"
  get "tasks" => "tasks#index"
  get "tasks/new" => "tasks#new"
  post "tasks" => "tasks#create"
  get "tasks:id/edit"=> "tasks#edit"
  get "tasks/:id/show" => "tasks#show"
  delete "tasks/:id/destroy" => "tasks#destroy"
  resources :tasks
end
