class RecipesController < ApplicationController
	before_action :find_recipe, only: [:show, :edit, :update, :destroy]
	before_action :recipe_auth, only: [:edit, :update, :destroy]

	def index
		@recipe = Recipe.all.order("created_at DESC")
	end

	def show
		commontator_thread_show(@commontable)
	end

	def new
		@recipe = current_user.recipes.build
	end

	def create
		@recipe = current_user.recipes.new(recipe_params)

		if @recipe.save
			redirect_to @recipe, notice: "Successfully created new recipe!"
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @recipe.update(recipe_params)
			redirect_to @recipe
		else
			render 'edit'
		end
	end

	def destroy
		@recipe.destroy
		redirect_to root_path, notice: "Successfully deleted recipe"
	end


	private

	def recipe_params
		params.require(:recipe).permit(:title, :description, :image, ingredients_attributes: [:id, :name, :_destroy],
			directions_attributes: [:id, :step, :_destroy])
	end

	def find_recipe
		@recipe = Recipe.find(params[:id])
	end

	def recipe_auth
		if current_user!=@recipe.user
			redirect_to root_path, notice: "Only the User who created the Recipe can do this."
		end
	end
end

