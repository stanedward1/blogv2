class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @blog = @blog.comments.create(comment_params)
    redirect_to blog_path(@blog)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
