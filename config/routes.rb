Rails.application.routes.draw do
  #Registro de organizaciones
  get '/organizacion', to: 'organizacion#index', as: 'indexorga' #muestra una interfaz que solocita nombre y clave de una organizacion
  get '/organizacion', to: 'organizacion#new', as: 'nuevaorga' #muestra la interfaz para insertar los datos de una nueva organizacion
  post '/organizacion', to: 'organizacion#create', as: 'crearorga' #crea una nueva organizacion
  get '/organizacion/:id', to: 'organizacion#show', as: 'mostrarorga' #muestra la informacion de una organizacion
  get '/organizacion/:id/edit', to: 'organizacion#edit', as: 'editarorga' #muestra la interfaz para editar los datos de una organizacion
  put '/organizacion/:id', to: 'organizacion#update', as: 'actualizarorga' #actualiza los datos de una organizacion
  delete '/organizacion/:id', to: 'organizacion#destroy', as: 'destruirorga' #elimina una organizacion
  
  #Registro de sucursales
  get '/sucursal', to: 'sucursal#index', as: 'indexsucursal' #muestra una lista de sucursales
  get '/sucursal', to: 'sucursal#new', as: 'nuevasucursal' #muestra la interfaz para insertar los datos de una nueva sucursal
  post '/sucursal', to: 'sucursal#create', as: 'crearsucursal' #crea una nueva sucursal
  get '/sucursal/:id', to: 'sucursal#show', as: 'mostrarsucursal' #muestra la informacion de una sucursal
  get '/sucursal/:id/edit', to: 'sucursal#edit', as: 'editarsucursal' #muestra la interfaz para editar los datos de una sucursal
  put '/sucursal/:id', to: 'sucursal#update', as: 'actualizarsucursal' #actualiza los datos de una sucursal
  delete '/sucursal/:id', to: 'sucursal#destroy', as: 'destruirsucursal' #elimina una sucursal
  
  #Registro de clientes
  get '/cliente', to: 'cliente#index', as: 'indexcliente' #muestra una interfaz que solocita nombre y clave de un cliente
  get '/cliente', to: 'cliente#new', as: 'nuevocliente' #muestra la interfaz para insertar los datos de un nuevo cliente
  post '/cliente', to: 'cliente#create', as: 'crearcliente' #crea un nuevo cliente
  get '/cliente/:id', to: 'cliente#show', as: 'mostrarcliente' #muestra la informacion de un cliente
  get '/cliente/:id/edit', to: 'cliente#edit', as: 'editarcliente' #muestra la interfaz para editar los datos de un cliente
  put '/cliente/:id', to: 'cliente#update', as: 'actualizarcliente' #actualiza los datos de un cliente
  delete '/cliente/:id', to: 'cliente#destroy', as: 'destruircliente' #elimina un cliente
  
  #Registro de productos
  get '/producto', to: 'producto#index', as: 'indexproducto' #muestra una lista de productos
  get '/producto', to: 'producto#new', as: 'nuevoproducto' #muestra la interfaz para insertar los datos de un nuevo producto
  post '/producto', to: 'producto#create', as: 'crearproducto' #crea un nuevo producto
  get '/producto/:id', to: 'producto#show', as: 'mostrarproducto' #muestra la informacion de un producto
  get '/producto/:id/edit', to: 'producto#edit', as: 'editarproducto' #muestra la interfaz para editar los datos de un producto
  put '/producto/:id', to: 'producto#update', as: 'actualizarproducto' #actualiza los datos de un producto
  delete '/producto/:id', to: 'producto#destroy', as: 'destruirproducto' #elimina un producto
  
  #Registro de vehiculos
  get '/vehiculo', to: 'vehiculo#index', as: 'indexvehiculo' #muestra una lista de vehiculo
  get '/vehiculo', to: 'vehiculo#new', as: 'nuevovehiculo' #muestra la interfaz para insertar los datos de un nuevo vehiculo
  post '/vehiculo', to: 'vehiculo#create', as: 'crearvehiculo' #crea un nuevo vehiculo
  get '/vehiculo/:id', to: 'vehiculo#show', as: 'mostrarvehiculo' #muestra la informacion de un vehiculo
  get '/vehiculo/:id/edit', to: 'vehiculo#edit', as: 'editarvehiculo' #muestra la interfaz para editar los datos de un vehiculo
  put '/vehiculo/:id', to: 'vehiculo#update', as: 'actualizarvehiculo' #actualiza los datos de un vehiculo
  delete '/vehiculo/:id', to: 'vehiculo#destroy', as: 'destruirvehiculo' #elimina un vehiculo
  
  #Registro de gerentes
  get '/gerente', to: 'gerente#index', as: 'indexgerente' #muestra una lista de gerentes
  get '/gerente', to: 'gerente#new', as: 'nuevogerente' #muestra la interfaz para insertar los datos de un nuevo gerente
  post '/gerente', to: 'gerente#create', as: 'creargerente' #crea un nuevo gerente
  get '/gerente/:id', to: 'gerente#show', as: 'mostrargerente' #muestra la informacion de un gerente
  get '/gerente/:id/edit', to: 'gerente#edit', as: 'editargerente' #muestra la interfaz para editar los datos de un gerente
  put '/gerente/:id', to: 'gerente#update', as: 'actualizargerente' #actualiza los datos de un gerente
  delete '/gerente/:id', to: 'gerente#destroy', as: 'destruirgerente' #elimina un gerente
  
  #Por el momento esto...
  
  
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
