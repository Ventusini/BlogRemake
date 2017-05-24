class CategoriesController < ApplicationController
  def index 
    @categories=Category.paginate(page: params[:page], per_page: 5)
  end
  
  def create
    @category=Category.new(category_paramas)
    if @category.save
      flash[:success]= "category created"
      redirect_to categories_path
      
    else
      render 'new'
    end
  end
  
  def new 
    @category=Category.new
  end
  
  def show
  
  end
  
  private
  def category_paramas
    params.require(:category).permit(:name)
  end
end