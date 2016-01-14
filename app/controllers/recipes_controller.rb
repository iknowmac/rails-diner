class RecipesController < ApplicationController
    
    def index
        # Pagination provided by will_paginate & will_paginate-bootstrap gems. Also
        # ordering DESC to put the most recent recipe at the top of my list.
        @recipes = Recipe.all.paginate(:page => params[:page], :per_page => 5).order(id: :DESC)
    end
    
    def show
        @recipe = Recipe.find(params[:id])
    end
  
    def new
        @recipe = Recipe.new
    end
    
    def edit
        @recipe = Recipe.find(params[:id])
    end
        
    def create
        @recipe = Recipe.new(recipe_params)
        
        if @recipe.save
            # render the edit view so we can add ingredients and instruction. This is
            # kind of hack since I don't know how to build formsets like in Django.
            render 'edit'
        else
            render 'new'
        end
    end
    
    def update
        @recipe = Recipe.find(params[:id])
        
        if @recipe.update(recipe_params)
            redirect_to @recipe
        else
            render 'edit'
        end
    end
    
    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
 
        redirect_to recipes_path
    end
    
    private
        def recipe_params
            params.require(:recipe).permit(:title, :image, :description, :servings, :prep_time, :cook_time, :passive_time)
        end
end
