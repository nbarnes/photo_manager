PhotoManager::Application.routes.draw do
  resources :galleries
  resources :photos, except: :edit

  root :to => 'photos#display'

  get 'tags', to: 'tags#index'
  get 'tags/:tag_name', to: 'tags#show'

  mount PostgresqlLoStreamer::Engine => "/photo_image"
end
