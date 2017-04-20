class PostsController < ApplicationController

  def index
  end

  def show
    def show
      @post = Post.new
    end
  end

  def new
    def new
      @user = User.last
      @post = Post.new
    end
  end

  def create
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
