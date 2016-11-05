Rails.application.routes.draw do


root 'paginas_estaticas#home'

get 'home' => 'paginas_estaticas#home'
get 'calendarioematricula' => 'paginas_estaticas#calendarioematricula'
get 'editais' => 'paginas_estaticas#editais'
get 'estruturacurricular' => 'paginas_estaticas#estruturacurricular'
get 'formularios' => 'paginas_estaticas#formularios'
get 'legislacao' => 'paginas_estaticas#legislacao'
get 'manualdoaluno' => 'paginas_estaticas#manualdoaluno'
get 'quadrodehorarios' => 'paginas_estaticas#quadrodehorarios'
get 'quemsomos' => 'paginas_estaticas#quemsomos'
get 'regimentos' => 'paginas_estaticas#regimentos'
get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
get 'logout'  => 'sessions#destroy'
get 'esqueci' => 'users#esqueci'
resources :users

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
