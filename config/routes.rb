Photogur::Application.routes.draw do
  # post 'pictures' => "pictures#create"

  # get 'pictures' => 'pictures#index'
  # get 'pictures/new' => 'pictures#new'
  # get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  # get 'pictures/:id' => 'pictures#show', as: "picture"

  resources :pictures
  root :to => "pictures#index"
  # get 'pictures' => 'pictures#index'

  # post 'pictures' => "pictures#create"
  # get 'pictures/new'=> 'pictures#new'

  
  # get 'pictures/:id' => 'pictures#show', as: "picture"

  # get 'pictures/:id' => "pictures#update"
  


  # get 'pictures/0' => 'pictures#picture0'
  # get 'pictures/1' => 'pictures#picture1'
  # get 'pictures/2' => 'pictures#picture2'
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