Spree::Core::Engine.routes.draw do
  namespace :admin do
   	resources :galleries 
  end

  match 'gallery' => 'galleries#index', :as => 'gallery'

  # Add your extension routes here
end
