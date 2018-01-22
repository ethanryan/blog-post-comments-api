class CommentsController < ApplicationController

  def index
    comments = Comment.all
    render json: comments
  end

  def create
    comment = Comment.new(comment_params)
    comment.save
    render json: comment
  end

  def comment_params
    params.require(:comment).permit(:username, :content, :post_id)
  end

end
