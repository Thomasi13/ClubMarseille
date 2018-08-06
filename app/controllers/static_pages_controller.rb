class StaticPagesController < ApplicationController
  def new
  end

  def create
  end

  def show
  		@user_first_name = User.find(params[:id]).firstname
    	@user_last_name = User.find(params[:id]).lastname
  end
end
