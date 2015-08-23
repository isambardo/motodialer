Rails.application.routes.draw do


  # Routes for the Track resource:
  # CREATE
  get "/tracks/new", :controller => "tracks", :action => "new"
  post "/create_track", :controller => "tracks", :action => "create"

  # READ
  get "/tracks", :controller => "tracks", :action => "index"
  get "/tracks/:id", :controller => "tracks", :action => "show"

  # UPDATE
  get "/tracks/:id/edit", :controller => "tracks", :action => "edit"
  post "/update_track/:id", :controller => "tracks", :action => "update"

  # DELETE
  get "/delete_track/:id", :controller => "tracks", :action => "destroy"
  #------------------------------

  # Routes for the Set_up resource:
  # CREATE
  get "/set_ups/new", :controller => "set_ups", :action => "new"
  post "/create_set_up", :controller => "set_ups", :action => "create"

  # READ
  get "/set_ups", :controller => "set_ups", :action => "index"
  get "/set_ups/:id", :controller => "set_ups", :action => "show"

  # UPDATE
  get "/set_ups/:id/edit", :controller => "set_ups", :action => "edit"
  post "/update_set_up/:id", :controller => "set_ups", :action => "update"

  # DELETE
  get "/delete_set_up/:id", :controller => "set_ups", :action => "destroy"
  #------------------------------

  # Routes for the Bike resource:
  # CREATE
  get "/bikes/new", :controller => "bikes", :action => "new"
  post "/create_bike", :controller => "bikes", :action => "create"

  # READ
  get "/bikes", :controller => "bikes", :action => "index"
  get "/bikes/:id", :controller => "bikes", :action => "show"

  # UPDATE
  get "/bikes/:id/edit", :controller => "bikes", :action => "edit"
  post "/update_bike/:id", :controller => "bikes", :action => "update"

  # DELETE
  get "/delete_bike/:id", :controller => "bikes", :action => "destroy"
  #------------------------------

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'bikes#index'

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
