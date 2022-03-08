class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]


  def show
    @articles = @user.articles
  end

  def index
    @users = User.all
  end

  def new
      @user = User.new
  end

  def edit
    
  end

  def update
    if (@user.update(user_params))
      flash[:notice] = "Profile updated!!"
      redirect_to @user
    else
      render 'edit'
    end
  end


  def create
      @user = User.new(user_params)
      if @user.save
          flash[:notice] = "User #{@user.username} Created. Welcome to Alpha Blog!!"
          redirect_to articles_path
      else
          render 'new'
      end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:username, :email, :password)
  end


end