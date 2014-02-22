PhotoManager::Application.routes.draw do
  resources :photos

  root :to => 'photos#display'

  mount PostgresqlLoStreamer::Engine => "/photo_image"
end
