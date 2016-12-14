class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def esqueci
    @user = User.find(1)
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
