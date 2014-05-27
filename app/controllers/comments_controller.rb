class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params.require(:comment).permit(:post_id, :content))
    redirect_to @post if @comment.save
    #params.require(:comment).permit(:post_id, :content)
  end
  
end