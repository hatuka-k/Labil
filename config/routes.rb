Rails.application.routes.draw do

  get 'administrator/index', as: 'admin'

  resources :sessions, only: [:new, :create, :destroy]
  resources :schedules
  resources :members
  resources :messages

  match '/signup', to:'members#new',    via: 'get'
  match '/signin', to:'sessions#new',    via: 'get', as: 'signin'
  match '/signout', to:'sessions#destroy',    via: 'delete', as: 'signout'

  
  get 'registrations/index/:id' => 'registrations#index', :as=> 'registrations_index'
  put "registrations/zaishitsu/:id" => 'registrations#zaishitsu', :as=> 'registrations_zaishitsu' 
  put "registrations/gakunai/:id" => 'registrations#gakunai', :as=> 'registrations_gakunai' 
  get "registrations/gakunai/:id/registgakunai/:loc" => 'registrations#registgakunai', :as=> 'registrations_registgakunai' 
  get "registrations/gaishutsu/:id/registgaishutsu/:loc" => 'registrations#registgaishutsu', :as=> 'registrations_registgaishutsu' 
  put "registrations/gaishutsu/:id" => 'registrations#gaishutsu', :as=> 'registrations_gaishutsu' 
  put "registrations/kitaku/:id" => 'registrations#kitaku', :as=> 'registrations_kitaku' 
  
  get 'topviews/index'

  root to: "topviews#index"


  match ':controller(/:action(/:id))', via:[:get, :post, :patch]


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
