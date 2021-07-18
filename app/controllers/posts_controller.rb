class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.create(post_params)
    if @post.id
      render :show
    else
      redirect_to new_post_path
    end


  end

  private

    def post_params
      params.require(:post).permit(:name, :content, :tag_ids => [])
    end
end
