class ListsController < ApplicationController
  before_action :set_list, only: %i[show destroy]

  def index
    @images = [
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668286602/MovieListApp/card_bg_images/netflix_pcqgml.png',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668285729/MovieListApp/card_bg_images/pexels-pixabay-458379_mjyjcm.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668285725/MovieListApp/card_bg_images/pexels-quark-studio-2507025_m2zqpj.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668285729/MovieListApp/card_bg_images/pexels-claudio-siracusano-13400083_evhe7e.jpg'
    ]
    @banners = [
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668386585/MovieListApp/6366_i75e0x.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203187/MovieListApp/vmoqijzbotvhobjrwp4h.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203186/MovieListApp/ehmcnldlqdfndl5whlmk.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400729/MovieListApp/ERURg5kVAAAhLTC_yy8wf7.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400739/MovieListApp/mortal-kombat-2021-movies-poster-4096x1895-4902_p0oayx.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400497/MovieListApp/wtV2Jd5GP1B1VA8focKNqclqv5ERFRor9FQStCnG0-s_cwuwol.webp'
    ]

    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    @banners = [
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668386585/MovieListApp/6366_i75e0x.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203187/MovieListApp/vmoqijzbotvhobjrwp4h.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203186/MovieListApp/ehmcnldlqdfndl5whlmk.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400729/MovieListApp/ERURg5kVAAAhLTC_yy8wf7.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400739/MovieListApp/mortal-kombat-2021-movies-poster-4096x1895-4902_p0oayx.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400497/MovieListApp/wtV2Jd5GP1B1VA8focKNqclqv5ERFRor9FQStCnG0-s_cwuwol.webp'
    ]
  end

  def new
    @list = List.new
    @banners = [
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668386585/MovieListApp/6366_i75e0x.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203187/MovieListApp/vmoqijzbotvhobjrwp4h.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203186/MovieListApp/ehmcnldlqdfndl5whlmk.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400729/MovieListApp/ERURg5kVAAAhLTC_yy8wf7.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400739/MovieListApp/mortal-kombat-2021-movies-poster-4096x1895-4902_p0oayx.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400497/MovieListApp/wtV2Jd5GP1B1VA8focKNqclqv5ERFRor9FQStCnG0-s_cwuwol.webp'
    ]
  end

  def create
    @banners = [
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668386585/MovieListApp/6366_i75e0x.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203187/MovieListApp/vmoqijzbotvhobjrwp4h.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203186/MovieListApp/ehmcnldlqdfndl5whlmk.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400729/MovieListApp/ERURg5kVAAAhLTC_yy8wf7.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400739/MovieListApp/mortal-kombat-2021-movies-poster-4096x1895-4902_p0oayx.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400497/MovieListApp/wtV2Jd5GP1B1VA8focKNqclqv5ERFRor9FQStCnG0-s_cwuwol.webp'
    ]

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
