class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: session_params[:username])

    if @user
      #do something if exists
      if @user && @user.authenticate (session_params[:password])
        #bycrypt hash up entered password and compare to the one that is stored in database
        session[:user_id] = @user.id redirect_to root
        #when passwords match do...
      else
        #when passwords compared do not match
        flash[:errors] = ["Invalid username &/or password"]
        render :new
    end
  end

  def destroy
    # session[:user_id].destroy
    # alternate approach to above is....
    session[:user_id] = nil
    redirect_to login
  end
private
def sessions_params
  params.require(:user).permit(:username, :password)
  end

end
