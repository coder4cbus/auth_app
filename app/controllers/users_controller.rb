class UsersController < ApplicationController
#shows the reg form
def new
  @user = User.new
end

# POST req to reg via new user
def create
  @user = User.new(user_params)

  if @user.save
    flash[:message] = "User successfully created!"
    session[:user_id] = @user.id
    redirect_to root
  else
    flash[:errors] = @user.errors.full_messages
    render :new
  end
end

#shows the edit form
def edit
end

#POST req to update a user's info
def update
end


def show
  @user = User.find(params[:id])
end

def index
  @users = User.all
end


def destroy
  # destroy user
end

def user_params
  params.require(:user).permit(:username, :password)
  end
end
