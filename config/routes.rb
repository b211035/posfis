Posfis::Application.routes.draw do
  
  namespace :manage do
    resources :friends do
      member do
        get 'add_friend'
      end
    end
    resources :products do
      collection do
        get 'dealerInfo'
      end
    end
    resources :blogs
    resources :trades do
      collection do
        get 'history'
      end
    end
    resources :orders do
      collection do
        get 'history'
      end
      member do
        get 'next_phase'
      end
    end
    resources :settings
    resources :user_settings
    resources :product_value
    resources :dealer_info
  end

  namespace :admin do
    resources :users
    resources :logs
  end

  # デフォルトページを公開ページに設定  
  root 'tops#index'

  devise_for :users, :controllers => { :registrations => :registrations }
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
  resources :tops
  resources :blogs

  resources :market do
    member do
      get 'purchase'
      post 'confirm'
      post 'checkout'
      get 'success'
      post 'complete'
      get 'dealer_info'
    end
  end

  # 管理関係ルーティング

  namespace :manage do
  end
  resources :manage do
    collection do
      post 'create_blog'
    end
  end
end
