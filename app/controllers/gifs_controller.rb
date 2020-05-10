class GifsController < ApplicationController
  before_action :set_gif, only: [:show, :edit, :update, :destroy]

  def index
    @gif = Gif.new
    @gifs = Gif.all
  end

  def show
  end

  def new
    @gif = Gif.new
  end

  def edit
  end

  def create
    @gif = Gif.new(gif_params)

    if @gif.save
      redirect_to gifs_path, notice: "Successfully saved gif!"
    end
  end

  def update
  end

  def destroy
    @gif.destroy
  end

  private

  def set_gif
    @gif = Gif.find(params[:id])
  end

  def gif_params
    params.require(:gif).permit(:title, :description, :file)
  end
end
