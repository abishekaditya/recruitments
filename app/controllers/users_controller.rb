class UsersController < ApplicationController
  def new
  end
  def front

  end
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/login'
    else
      redirect_to '/signup', :flash => { :error => "Incorrect or existing details!" }

    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :reg_no, :phone, :password_confirmation)
  end
end
