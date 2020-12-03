class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:company_name, :email, :password, :first_name, :last_name, :phone_number)
  end

  def video_params
    params.require(:video).permit(:title, :detail, :video).merge(user_id: current_user.id)
  end

end