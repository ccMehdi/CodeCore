class PostsController < ApplicationController

  before_action :find_post, only: [ :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
    @categories = Category.all.page(params[:page]).per(5)
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to edit_post_path(@post), notice: "Your Snippet Has been Added!"
    else
      flash[:alert] = "See errors below"
      render :new
    end
  end

  def show

    @post = Post.find params[:id]
    @category = Category.find @post.category_id
  end

  def edit
  end

  def update
    if @post.update post_params
      redirect_to edit_post_path(@post), notice: "Your Snippet Has Been Updated!"
    else
      flash[:alert] = "See errors below"
      render :edit
    end
  end

  private

  def find_post
    @post = Post.find params[:id]
  end

  def post_params
    params.require(:post).permit(:title, :work, :category_id)
  end


end
