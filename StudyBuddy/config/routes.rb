Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/messages' => 'conversations#create'
  get '/messages/new' => 'messages#create'
  
  resources :conversations do
      resources :messages
  end
end
