class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    #@post.comments.
    @comment = @post.comments.new(params[:comment])
    redirect_to @post if @comment.save       
  end
end
