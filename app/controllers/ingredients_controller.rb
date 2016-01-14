class IngredientsController < ApplicationController
    
    def create
        @recipe = Recipe.find(params[:recipe_id])
        @ingredient = @recipe.ingredients.create(ingredient_params)
        # When I create a new ingredient, I wanted it to redirect back to the edit page.
        # This way I can keep all editing of associated ingredients on one page.
        redirect_to edit_recipe_path(@recipe)
    end
    
    def destroy
        @recipe = Recipe.find(params[:recipe_id])
        @ingredient = @recipe.ingredients.find(params[:id])
        @ingredient.destroy
        # When I delete a new ingredient, I wanted it to redirect back to the edit page.
        # This way I can keep all editing of associated ingredients on one page.
        redirect_to edit_recipe_path(@recipe)
    end
  
    private
        def ingredient_params
            params.require(:ingredient).permit(:name)
        end
end
