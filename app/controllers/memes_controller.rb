class MemesController < ApplicationController
  def index
    @memes = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = current_user.memes.new(meme_params)
    if @meme.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  def update
    @meme = Meme.find(params[:id])
    @meme.caption = params[:meme][:caption]
    @meme.save
    redirect_to user_path(current_user)
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy
    redirect_to user_path(current_user)
  end

  private
  def meme_params
    params.require(:meme).permit(:caption, :url)
  end
end
