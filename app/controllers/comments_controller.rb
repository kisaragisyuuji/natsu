class CommentsController < ApplicationController
 def create
  @comment = Comment.create(comment_params)
  redirect_to sweet_path(@comment.sweet.id)
 end

 private
 def comment_params
  params.require(:comment).permit(:text).merge(user_id: current_user.id, sweet_id: params[:sweet_id])
 end
end
