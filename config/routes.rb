Rails.application.routes.draw do

    #resources :static_pages 


get 'static_pages/home'
get 'static_pages/aboutus'
get 'static_pages/contact'
get 'static_pages/meet'




  get 'social/show'

	devise_for :users

	root :to =>'static_pages#home'
 #get '/', :to => redirect('/home.html')
	resources :posts do
  		resources :comments
  	end

  	resources :social, only: [:show]
  	resources :tags do
  	collection do 
  		post 'show2'
    end
  	resources :comments do
  		resources :cocs
    end
  	end
  

   resources :users

   resources :tags do
    collection do 
      post 'show2'
    end
  end

  resources :signaturs






  end
