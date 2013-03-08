Wecruiting::Application.routes.draw do


  resources :request_messages
  resources :interview_answers
  resources :interview_questions

  
  scope "(:locale)", :locale => /en|de/ do
    
    root :to => "public#index"
    match "imprint" => "public#imprint"
    match "interview" => "public#interview"
    
    # Admins
    devise_for :admins
    namespace :admins do
      authenticate :admin do
        root :to => 'home#index'
      end
      resources :interview_questions
    end

    # Customers
    devise_for :customers
    namespace :customers do
      authenticate :customer do
        root :to => 'home#index'
      end
      resources :departments do
        resources :job_postings
      end
    end

    # Consumers
    devise_for :consumers
    namespace :consumers do
      authenticate :consumer do
        root :to => 'home#index'
      end
      resources :job_postings do
        resources :job_answers
      end
    end
    
  end
  



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
