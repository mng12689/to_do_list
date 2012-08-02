Todo::Application.routes.draw do
  root to: "lists#home"
  resources :lists 
  resources :tasks
end
