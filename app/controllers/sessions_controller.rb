class SessionsController < ApplicationController
  
  def new
  end
  

  def create
  	@user = User.find_by(email: params[:session][:email].downcase)

	   if @user
		  flash[:success] = 'Your are succefully connected'
		  log_in (@user)
		  redirect_to static_page_path(@user.id)

    else
    	flash.now[:danger] = 'Invalid firstname/lastname and email combination'
    	render 'new'
	  end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
