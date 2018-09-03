Rails.application.routes.draw do
  namespace :api do
  get 'pal' => 'monsters#index'
  post 'pal' => 'monsters#create'
  get 'pal/:id' => 'monsters#show'
  patch 'pal/:id' => 'monsters#update'
  delete 'pal/:id' => 'monsters#destroy'
  end
end
