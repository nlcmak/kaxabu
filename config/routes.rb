Kaxabu::Application.routes.draw do  # The priority is based upon order of creation: first created -> highest priority.
  
  resources :bok8_lok8s
  resources :su5_tian2s

  get 'bok8_lok8_tshue7_tsu1_liau7' => 'bok8_lok8_tshue7_tsu1_liau7#index'
  post 'bok8_lok8_tshue7_tsu1_liau7' => 'bok8_lok8_tshue7_tsu1_liau7#index'
  
  get 'phah4_zi7_tshue7_tsu1_liau7/index(/:zi7)' => 'phah4_zi7_tshue7_tsu1_liau7#index'
  get 'phah4_zi7_tshue7_tsu1_liau7(/:zi7)' => 'phah4_zi7_tshue7_tsu1_liau7#index'
  get '(:zi7)' => 'phah4_zi7_tshue7_tsu1_liau7#index'
  post 'phah4_zi7_tshue7_tsu1_liau7/index(/:zi7)' => 'phah4_zi7_tshue7_tsu1_liau7#index'
  post 'phah4_zi7_tshue7_tsu1_liau7(/:zi7)' => 'phah4_zi7_tshue7_tsu1_liau7#index'
  post '(:zi7)' => 'phah4_zi7_tshue7_tsu1_liau7#index'
  root 'phah4_zi7_tshue7_tsu1_liau7#index'
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
