Rails.application.routes.draw do
  #mashable roots
  get 'noticias/mashable/all', to: 'api#mashable_all'
  get 'noticias/mashable/titles', to: 'api#mashable_titles'
  get 'noticias/mashable/authors', to: 'api#mashable_authors'
  get 'noticias/mashable/dates', to: 'api#mashable_dates'
  get 'noticias/mashable/links', to: 'api#mashable_links'

  #digg roots
  get 'noticias/digg/all', to: 'api#digg_all'
  get 'noticias/digg/titles', to: 'api#digg_titles'
  get 'noticias/digg/authors', to: 'api#digg_authors'
  get 'noticias/digg/dates', to: 'api#digg_dates'
  get 'noticias/digg/links', to: 'api#digg_links'

  #reddit roots
  get 'noticias/reddit/all', to: 'api#reddit_all'
  get 'noticias/reddit/titles', to: 'api#reddit_titles'
  get 'noticias/reddit/authors', to: 'api#reddit_authors'
  get 'noticias/reddit/dates', to: 'api#reddit_dates'
  get 'noticias/reddit/links', to: 'api#reddit_links'

  #all roots
  get 'noticias/all/all', to: 'api#all_all'
  get 'noticias/all/titles', to: 'api#all_titles'
  get 'noticias/all/authors', to: 'api#all_authors'
  get 'noticias/all/dates', to: 'api#all_dates'
  get 'noticias/all/links', to: 'api#all_links'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
