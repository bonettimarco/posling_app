Rails.application.routes.draw do




  resources :docentes
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
  
#Links das funções de troca de língua
root 'paginas_estaticas#portugues_home'
get 'homepor' => 'paginas_estaticas#home'
get 'homeesp' => 'espanhol#home'
get 'homeing' => 'ingles#home'
get 'portugues_home' => 'paginas_estaticas#portugues_home' 
get 'ingles_home' => 'ingles#ingles_home'
get 'espanhol_home' => 'espanhol#espanhol_home'
#Links das paginas em português  
get 'calendarioematricula' => 'paginas_estaticas#calendarioematricula'
get 'editais' => 'paginas_estaticas#editais'
get 'estruturacurricular' => 'paginas_estaticas#estruturacurricular'
get 'formularios' => 'paginas_estaticas#formularios'
get 'legislacao' => 'paginas_estaticas#legislacao'
get 'manualdoaluno' => 'paginas_estaticas#manualdoaluno'
get 'quadrodehorarios' => 'paginas_estaticas#quadrodehorarios'
get 'quemsomos' => 'paginas_estaticas#quemsomos'
get 'regimentos' => 'paginas_estaticas#regimentos'
get 'egress' => 'paginas_estaticas#egress'
#Links do login  
get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
get 'logout'  => 'sessions#destroy'
#Links das páginas estáticas em espanhol
get 'calendarioematriculaesp' => 'espanhol#calendarioematricula'
get 'manualdoalunoesp' => 'espanhol#manualdoaluno'
get 'quemsomosesp' => 'espanhol#quemsomos'
get 'regimentosesp' => 'espanhol#regimentos'
get 'editaisesp' => 'espanhol#editais'
get 'estruturacurricularesp' => 'espanhol#estruturacurricular'
get 'legislacaoesp' => 'espanhol#legislacao'
get 'formulariosesp' => 'espanhol#formularios'
get 'quadrodehorariosesp' => 'espanhol#quadrodehorarios'
#Funções de chamada das páginas estáticas
get 'espanhol_calendario' => 'espanhol#espanhol_calendario'
get 'espanhol_manual' => 'espanhol#espanhol_manual'
get 'espanhol_quem' => 'espanhol#espanhol_quem'
get 'espanhol_regimento' => 'espanhol#espanhol_regimento'
get 'espanhol_editais' => 'espanhol#espanhol_editais'
get 'espanhol_curriculo' => 'espanhol#espanhol_curriculo'
get 'espanhol_legislacao' => 'espanhol#espanhol_legislacao'
get 'espanhol_formulario' => 'espanhol#espanhol_formulario'
get 'espanhol_quadro' => 'espanhol#espanhol_quadro'
get 'espanhol_egre' => 'espanhol#espanhol_egre'

#Links das páginas dinâmicas em espanhol
get 'egressesp' => 'espanhol#egress'
get 'finaisesp' => 'espanhol#espanhol_finais'
get 'gruposesp' => 'espanhol#espanhol_grupos'
get 'linhasesp' => 'espanhol#espanhol_linhas'
get 'colaboradoresesp' => 'espanhol#espanhol_colaboradores'
get 'financasesp' => 'espanhol#espanhol_financas'
get 'linksesp' => 'espanhol#espanhol_links'
get 'publicasesp' => 'espanhol#espanhol_publicas'
get 'eventosesp' => 'espanhol#espanhol_eventos'
get 'seletivosesp' => 'espanhol#espanhol_seletivos'
get 'docentesesp' => 'espanhol#espanhol_docentes'
get 'disciplinasesp' => 'espanhol#espanhol_disciplinas'
get 'disciplinas2sesp' => 'espanhol#espanhol_disciplinas2s'
get 'disciplinas3sesp' => 'espanhol#espanhol_disciplinas3s'
get 'espanhol_contato' => 'espanhol#espanhol_contato'

#Links das páginas estáticas em inglês
get 'calendarioematriculaing' => 'ingles#calendarioematricula'
get 'egressing' => 'ingles#egress'
get 'manualdoalunoing' => 'ingles#manualdoaluno'
get 'finaising' => 'ingles#ingles_finais'
get 'quemsomosing' => 'ingles#quemsomos'
get 'gruposing' => 'ingles#ingles_grupos'
get 'linhasing' => 'ingles#ingles_linhas'
get 'regimentosing' => 'ingles#regimentos'
get 'editaising' => 'ingles#editais'
get 'estruturacurricularing' => 'ingles#estruturacurricular'
get 'legislacaoing' => 'ingles#legislacao'
get 'colaboradoresing' => 'ingles#ingles_colaboradores'
get 'financasing' => 'ingles#ingles_financas'
get 'formulariosing' => 'ingles#formularios'
get 'quadrodehorariosing' => 'ingles#quadrodehorarios'
get 'linksing' => 'ingles#ingles_links'
get 'publicasing' => 'ingles#ingles_publicas'
get 'eventosing' => 'ingles#ingles_eventos'
get 'seletivosing' => 'ingles#ingles_seletivos'
get 'seletivosing' => 'ingles#ingles_seletivos'
get 'docentesing' => 'ingles#ingles_docentes'
get 'disciplinasing' => 'ingles#ingles_disciplinas'
get 'disciplinas2sing' => 'ingles#ingles_disciplinas2s'
get 'disciplinas3sing' => 'ingles#ingles_disciplinas3s'
get 'ingles_contato' => 'ingles#ingles_contato'
#Funções de chamada das páginas estáticas em inglês
get 'ingles_calendario' => 'ingles#ingles_calendario'
get 'ingles_manual' => 'ingles#ingles_manual'
get 'ingles_quem' => 'ingles#ingles_quem'
get 'ingles_regimento' => 'ingles#ingles_regimento'
get 'ingles_editais' => 'ingles#ingles_editais'
get 'ingles_curriculo' => 'ingles#ingles_curriculo'
get 'ingles_legislacao' => 'ingles#ingles_legislacao'
get 'ingles_formulario' => 'ingles#ingles_formulario'
get 'ingles_quadro' => 'ingles#ingles_quadro'
get 'ingles_egre' => 'ingles#ingles_egre'

get 'dout2030' => 'egressos#dout2030'
get 'dout2029' => 'egressos#dout2029'
get 'dout2028' => 'egressos#dout2028'
get 'dout2027' => 'egressos#dout2027'
get 'dout2026' => 'egressos#dout2026'
get 'dout2025' => 'egressos#dout2025'
get 'dout2024' => 'egressos#dout2024'
get 'dout2023' => 'egressos#dout2023'
get 'dout2022' => 'egressos#dout2022'
get 'dout2021' => 'egressos#dout2021'
get 'dout2020' => 'egressos#dout2020'
get 'dout2019' => 'egressos#dout2019'
get 'dout2018' => 'egressos#dout2018'
get 'dout2017' => 'egressos#dout2017'
get 'dout2016' => 'egressos#dout2016'
get 'dout2015' => 'egressos#dout2015'
get 'dout2014' => 'egressos#dout2014'
get 'dout2013' => 'egressos#dout2013'
get 'dout2012' => 'egressos#dout2012'
get 'dout2011' => 'egressos#dout2011'
get 'dout2010' => 'egressos#dout2010'
get 'mest2030' => 'egressos#mest2030'
get 'mest2029' => 'egressos#mest2029'
get 'mest2028' => 'egressos#mest2028'
get 'mest2027' => 'egressos#mest2027'
get 'mest2026' => 'egressos#mest2026'
get 'mest2025' => 'egressos#mest2025'
get 'mest2024' => 'egressos#mest2024'
get 'mest2023' => 'egressos#mest2023'
get 'mest2022' => 'egressos#mest2022'
get 'mest2021' => 'egressos#mest2021'
get 'mest2020' => 'egressos#mest2020'
get 'mest2019' => 'egressos#mest2019'
get 'mest2018' => 'egressos#mest2018'
get 'mest2017' => 'egressos#mest2017'
get 'mest2016' => 'egressos#mest2016'
get 'mest2015' => 'egressos#mest2015'
get 'mest2014' => 'egressos#mest2014'
get 'mest2013' => 'egressos#mest2013'
get 'mest2012' => 'egressos#mest2012'
get 'mest2011' => 'egressos#mest2011'
get 'mest2010' => 'egressos#mest2010'

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
