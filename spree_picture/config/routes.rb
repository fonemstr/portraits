Spree::Core::Engine.routes.draw do
  
  resources :line_items do
  	resources :pictures 
  end

end
