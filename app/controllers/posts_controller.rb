class PostsController < ApplicationController

  def index
    posts = Post.all
    render json: posts
  end

  def create
    post = Post.new
    render json: post
  end

  def create
    post = Post.new(post_params)
    post.save
    render json: post
  end

  def post_params
    params.require(:post).permit(:username, :content)
  end

end
