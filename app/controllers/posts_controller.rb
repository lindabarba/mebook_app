class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
    @post = Post.new
  end

  def new
    @user = User.all
    @post = Post.new
  end

  def create
    @user = User.all
    @post = Post.create(post_params)
    if @post.save
      redirect_to users_posts
    end
  end

  def edit
  end

private

  def user_params
    params.require(:post).permit(:title, :content)
  end

end
