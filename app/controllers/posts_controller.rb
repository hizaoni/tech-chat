class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to action: :index
  end

  private
  def post_params
    params.require(:question).permit(:title, :content, :name)
  end



end
