class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: '投稿が作成されました。'
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: '投稿が更新されました。'
    else
      render :edit
    end
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :start_date, :end_date)
  end

end
