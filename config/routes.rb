PhotoManager::Application.routes.draw do
  resources :galleries
  resources :photos, except: :edit

  root :to => 'photos#display'

  get 'tags', to: 'tags#index'
  get 'tags/:tag_name', to: 'tags#show'

  get 'searches', to: 'searches#search'

  match 'testit.json', to: 'json#testit', via: 'post'
  match 'searches.json', to: 'searches#search', via: 'post'

  mount PostgresqlLoStreamer::Engine => "/photo_image"
end