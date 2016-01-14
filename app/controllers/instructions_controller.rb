class InstructionsController < ApplicationController
    
    def create
        @recipe = Recipe.find(params[:recipe_id])
        @instruction = @recipe.instructions.create(instruction_params)
        # When I create a new instruction, I wanted it to redirect back to the edit page.
        # This way I can keep all editing of associated instruction on one page.
        redirect_to edit_recipe_path(@recipe)
    end
    
    def destroy
        @recipe = Recipe.find(params[:recipe_id])
        @instruction = @recipe.instructions.find(params[:id])
        @instruction.destroy
        # When I delete a new instruction, I wanted it to redirect back to the edit page.
        # This way I can keep all editing of associated instruction on one page.
        redirect_to edit_recipe_path(@recipe)
    end
  
    private
        def instruction_params
            params.require(:instruction).permit(:description)
        end
        
end
