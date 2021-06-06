class CommentsController < ApplicationController
  
  
  def create
    # @comment = Comment.new(comment_params)
    # @comment.recipe_id = params[:recipe_id]
    # @comment.save
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(comment_params)


    redirect_to recipe_path(@comment.recipe)
  end


  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

end
