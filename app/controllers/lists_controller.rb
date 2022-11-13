class ListsController < ApplicationController
  before_action :set_list, only: %i[show destroy]

  def index
    @images = [
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668286602/MovieListApp/card_bg_images/netflix_pcqgml.png',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668285729/MovieListApp/card_bg_images/pexels-pixabay-458379_mjyjcm.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668285725/MovieListApp/card_bg_images/pexels-quark-studio-2507025_m2zqpj.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668285729/MovieListApp/card_bg_images/pexels-claudio-siracusano-13400083_evhe7e.jpg'
    ]

    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new(list: @list)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), notice: 'movie was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
