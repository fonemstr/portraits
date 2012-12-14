Spree::Core::Engine.routes.draw do
  
  resources :line_items do
  	resources :pictures 
  end

  namespace :admin do
   resources :orders do
   	resources :pictures, :only => [:index, :show]
   end
  end

end
