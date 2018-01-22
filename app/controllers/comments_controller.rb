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

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    comment.save
    render json: comment
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: Comment.all
  end

  def comment_params
    params.require(:comment).permit(:id, :username, :content, :post_id)
  end

end
