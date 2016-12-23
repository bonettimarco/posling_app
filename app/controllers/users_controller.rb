class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    if !logged_in?
      redirect_to portugues_home_url
    else
    @user = User.new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end
  
    private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
	
	def user_resset
      params.require(:user).permit(:password)
    end
	
	
	
end
