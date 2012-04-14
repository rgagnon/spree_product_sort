Rails.application.routes.draw do
  
  namespace :admin do
		# callback for jQuery sort action
    match 'taxonomies/reorder_products/:id' => 'taxonomies#reorder_products', :via => :put
       
    resources :product_taxons do
      collection do
        get :positions
      end
    end
      
  end
end
