PhotoManager::Application.routes.draw do
  resources :photos

  root :to => 'photos#display'
end
