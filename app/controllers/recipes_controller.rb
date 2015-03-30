class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all.reverse
	end

	def show
		@recipe = Recipe.find params[:id]
	end

	def new
		@new_recipe = Recipe.new
	end

	def create
		@new_recipe = Recipe.create(params_recipe)
		@new_recipe.save
		if @new_recipe.save
			flash[:notice] = "Receita adicionada"
			redirect_to recipe_path(@new_recipe.id)
		else
			flash[:notice] = "Ops, ouve algum erro."
			render :new
		end

	end

	private
	def params_recipe
		params.require(:recipe).permit(:title, :description, :ingredients, :directions, :picture)
	end

end