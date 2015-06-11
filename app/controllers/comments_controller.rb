class CommentsController < ApplicationController
  def create
  	
  	@post = Post.find(params[:post_id])
  	@comment =@post.comments.build(comments_params)
  	@comment.save
  	if @comment.save
  		redirect_to @post, notice:"posted"
  	else
  		  		redirect_to @post, alert:"bot posted"

  end
end
  private
  def comments_params
  	params.require(:comment).permit(:comment)
end
end