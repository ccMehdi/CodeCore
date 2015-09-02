class CategoriesController < ApplicationController

  before_action :find_category, only: [:show, :edit, :update, :destroy]

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "Question created!"
    else
      flash[:alert] = "See errors below"
      render :new
    end
  end

  def index
    @categories = Category.all.page(params[:page]).per(5)
  end

  def show

  end

  def edit
  end

  def update
    if @category.update category_params
      redirect_to edit_category_path(@category), notice: "Category Updated!"
    else
      flash[:alert] = "See errors Below"
      render :edit
    end
  end

  def destroy

  end

  private

  def category_params
    params.required(:category).permit(:name)
  end

  def find_category
    @category = Category.find params[:id]
  end


end
