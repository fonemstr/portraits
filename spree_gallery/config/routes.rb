Spree::Core::Engine.routes.draw do
  namespace :admin do
   	resources :galleries 
  end

  # Add your extension routes here
end
