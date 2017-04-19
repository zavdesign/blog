Rails.application.routes.draw do
	resources :posts do
		resources :comments
	end

	devise_for :users

	resources :users, only: [:update] do
		collection do
			get :my
		end
	end

	



  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root 'welcome#index'
end
