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
  
  #Registro de personal base
  get '/base', to: 'base#index', as: 'indexbase' 
  get '/base', to: 'base#new', as: 'nuevobase' 
  post '/base', to: 'base#create', as: 'crearbase' 
  get '/base/:id', to: 'base#show', as: 'mostrarbase'
  get '/base/:id/edit', to: 'base#edit', as: 'editarbase' 
  put '/base/:id', to: 'base#update', as: 'actualizarbase' 
  delete '/base/:id', to: 'base#destroy', as: 'destruirbase' 
  
  #Registro de repartidores
  get '/repartidor', to: 'repartidor#index', as: 'indexrepartidor' 
  get '/repartidor', to: 'repartidor#new', as: 'nuevorepartidor' 
  post '/repartidor', to: 'repartidor#create', as: 'crearrepartidor'
  get '/repartidor/:id', to: 'repartidor#show', as: 'mostrarrepartidor' 
  get '/repartidor/:id/edit', to: 'repartidor#edit', as: 'editarrepartidor'
  put '/repartidor/:id', to: 'repartidor#update', as: 'actualizarrepartidor' 
  delete '/repartidor/:id', to: 'repartidor#destroy', as: 'destruirrepartidor' 
  
   #Registro de orden
  get '/orden', to: 'orden#index', as: 'indexorden' 
  get '/orden', to: 'orden#new', as: 'nuevoorden'
  post '/orden', to: 'orden#create', as: 'crearorden'
  get '/orden/:id', to: 'orden#show', as: 'mostrarorden' 
  get '/orden/:id/edit', to: 'orden#edit', as: 'editarorden' 
  put '/orden/:id', to: 'orden#update', as: 'actualizarorden'
  delete '/orden/:id', to: 'orden#destroy', as: 'destruirorden'
  
     #Registro de pago
  get '/pago', to: 'pago#index', as: 'indexpago' 
  get '/pago', to: 'pago#new', as: 'nuevopago'
  post '/pago', to: 'pago#create', as: 'crearpago' 
  get '/pago/:id', to: 'pago#show', as: 'mostrarpago'
  get '/pago/:id/edit', to: 'pago#edit', as: 'editarpago'
  put '/pago/:id', to: 'pago#update', as: 'actualizarpago' 
  delete '/pago/:id', to: 'pago#destroy', as: 'destruirpago' 
  
  #Registro de ordenverificado
  get '/ordenverificado', to: 'ordenverificado#index', as: 'indexordenverificado'
  get '/ordenverificado', to: 'ordenverificado#new', as: 'nuevoordenverificado' 
  post '/ordenverificado', to: 'ordenverificado#create', as: 'crearordenverificado'
  get '/ordenverificado/:id', to: 'ordenverificado#show', as: 'mostrarordenverificado' 
  get '/ordenverificado/:id/edit', to: 'ordenverificado#edit', as: 'editarordenverificado'
  put '/ordenverificado/:id', to: 'ordenverificado#update', as: 'actualizarordenverificado' 
  delete '/ordenverificado/:id', to: 'ordenverificado#destroy', as: 'destruirordenverificado' 
  
  #Registro de ordenproducto
  get '/ordenproducto', to: 'ordenproducto#index', as: 'indexordenproducto'
  get '/ordenproducto', to: 'ordenproducto#new', as: 'nuevoordenproducto' 
  post '/ordenproducto', to: 'ordenproducto#create', as: 'crearordenproducto'
  get '/ordenproducto/:id', to: 'ordenproducto#show', as: 'mostrarordenproducto' 
  get '/ordenproducto/:id/edit', to: 'ordenproducto#edit', as: 'editarordenproducto' 
  put '/ordenproducto/:id', to: 'ordenproducto#update', as: 'actualizarordenproducto' 
  delete '/ordenproducto/:id', to: 'ordenproducto#destroy', as: 'destruirordenproducto' 
  
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
