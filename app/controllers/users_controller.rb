class UsersController < ApplicationController
  
  def index
    @all_users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] = "Inscription done!"
      redirect_to static_page_path(@user.id)
    else
      flash.now[:danger] = 'Invalid email!'
      render 'new'
    end
  end

  def show
    @user_first_name = User.find(params[:id]).firstname
    @user_last_name = User.find(params[:id]).lastname
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:firstname,:lastname,:email)
  end

end
