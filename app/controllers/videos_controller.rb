class VideosController < ApplicationController
  def index
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.create
    redirect_to @video
  end

  def show
    @video = Video.find(params[:id])
  end

  private

  def video_params
    params.require(:video).permit(:title, :detail, :video).merge(user_id: current_user.id)
  end
end