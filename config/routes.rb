Rails.application.routes.draw do




  resources :docentes
  resources :eventos
  resources :processo_seletivos
  resources :publicas
  resources :links
  resources :contatos
  resources :egressos
  resources :colaboradores
  resources :grupos
  resources :disciplinas3s
  resources :disciplinas2s
  resources :disciplinas
  resources :linhas
  resources :finais
  resources :financas
  resources :dados
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
get 'egress' => 'paginas_estaticas#egress'
get 'dout2017' => 'egressos#dout2017'
get 'dout2016' => 'egressos#dout2016'
get 'dout2015' => 'egressos#dout2015'
get 'dout2014' => 'egressos#dout2014'
get 'dout2013' => 'egressos#dout2013'
get 'mest2017' => 'egressos#mest2017'
get 'mest2016' => 'egressos#mest2016'
get 'mest2015' => 'egressos#mest2015'
get 'mest2014' => 'egressos#mest2014'
get 'mest2013' => 'egressos#mest2013'
get 'mest2012' => 'egressos#mest2012'
get 'mest2011' => 'egressos#mest2011'
get 'portugues' => 'paginas_estaticas#portugues'
get 'homeesp' => 'espanhol#home'
get 'calendarioematriculaesp' => 'espanhol#calendarioematricula'
get 'egressesp' => 'espanhol#egress'
get 'manualdoalunoesp' => 'espanhol#manualdoaluno'
get 'finaisesp' => 'espanhol#finais'
get 'quemsomosesp' => 'espanhol#quemsomos'
get 'gruposesp' => 'espanhol#grupos'
get 'linhasesp' => 'espanhol#linhas'
get 'regimentosesp' => 'espanhol#regimentos'
get 'editaisesp' => 'espanhol#editais'
get 'estruturacurricularesp' => 'espanhol#estruturacurricular'
get 'legislacaoesp' => 'espanhol#legislacao'
get 'colaboradoresesp' => 'espanhol#colaboradores'
get 'financasesp' => 'espanhol#financas'
get 'formulariosesp' => 'espanhol#formularios'
get 'quadrodehorariosesp' => 'espanhol#quadrodehorarios'
get 'homeing' => 'ingles#home'
get 'calendarioematriculaing' => 'ingles#calendarioematricula'
get 'egressing' => 'ingles#egress'
get 'manualdoalunoing' => 'ingles#manualdoaluno'
get 'finaising' => 'ingles#finais'
get 'quemsomosing' => 'ingles#quemsomos'
get 'gruposing' => 'ingles#grupos'
get 'linhasing' => 'ingles#linhas'
get 'regimentosing' => 'ingles#regimentos'
get 'editaising' => 'ingles#editais'
get 'estruturacurricularing' => 'ingles#estruturacurricular'
get 'legislacaoing' => 'ingles#legislacao'
get 'colaboradoresing' => 'ingles#colaboradores'
get 'financasing' => 'ingles#financas'
get 'formulariosing' => 'ingles#formularios'
get 'quadrodehorariosing' => 'ingles#quadrodehorarios'
resources :users
resources :password_resets, only: [:new, :create, :edit, :update]

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
