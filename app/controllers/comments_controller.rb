class CommentsController < ApplicationController

  def create
    @comments = Comment.create(comment_params)
    redirect_to post_path(@comments.post_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

end
