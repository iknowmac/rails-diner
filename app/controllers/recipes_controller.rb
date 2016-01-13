class RecipesController < ApplicationController
    
    def index
        @recipes = Recipe.all.paginate(:page => params[:page], :per_page => 5)
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
            redirect_to @recipe
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
    
    #uploaded_io = params[:image]
        #File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        #file.write(uploaded_io.read)
    #end
    
    private
        def recipe_params
            params.require(:recipe).permit(:title, :image, :description, :servings, :prep_time, :cook_time, :passive_time)
        end
end
