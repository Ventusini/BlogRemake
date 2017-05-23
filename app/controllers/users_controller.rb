class UsersController < ApplicationController
  
  before_action :set_user, only: [:edit, :update, :show]
  before_action :require_same_user, only: [:edit]
  
    def new
      @user=User.new
    end
    
    def index
      @users = User.paginate(page: params[:page], per_page: 5)
    end
    
    def create
      @user=User.new(user_params)
      if @user.save
        session[:user_id]=@user.id
        flash[:success] = "Welcome to the Summoners Rift #{@user.username}"
        redirect_to user_path(@user)
      else
        render "new"
      end
    end
    
    def edit
      
    end
    
    def update
      
      if @user.update(user_params)
        flash[:success] = "Your changes has been saved"
        redirect_to articles_path
      else
        render 'edit'
      end
    end
    
    def show
      @user_articles = @user.articles.paginate(page: params[:page], per_page: 5)
    end
  
    
    private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
    
    def set_user
      @user = User.find(params[:id])
    end
    
    def require_same_user
      if current_user != @user
        flash[:danger] = "You can only edit your articles"
      end
      
    end
end