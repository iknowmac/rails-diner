Rails.application.routes.draw do

    # Route our idex page to the recipes controller
    root 'recipes#index'
    
    # Routs for ingredients and instructions as nested resources.
    resources :recipes do
        resources :ingredients
        resources :instructions
    end

end
