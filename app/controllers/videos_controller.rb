class VideosController < ApplicationController
  def index
    @video = Video.all
  end

  def create
    @video = Video.new(video_params)
    @video.create
    redirect_to @video
  end

  def show
    @video = Video.find(params[:id])
    @user = @video.user
  end

  private

  def video_params
    params.require(:video).permit(:title, :detail, :video).merge(user_id: current_user.id)
  end

  def user_params
    params.require(:user).permit(:company_name, :email, :password, :first_name, :last_name, :phone_number)
  end

end

