class BookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: %i[new create]

  def new
    @bookmark = Bookmark.new
    @banners = [
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668386585/MovieListApp/6366_i75e0x.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203187/MovieListApp/vmoqijzbotvhobjrwp4h.jpg',
      'https://res.cloudinary.com/dppymdnxh/image/upload/v1668203186/MovieListApp/ehmcnldlqdfndl5whlmk.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400729/MovieListApp/ERURg5kVAAAhLTC_yy8wf7.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400739/MovieListApp/mortal-kombat-2021-movies-poster-4096x1895-4902_p0oayx.jpg', 'https://res.cloudinary.com/dppymdnxh/image/upload/v1668400497/MovieListApp/wtV2Jd5GP1B1VA8focKNqclqv5ERFRor9FQStCnG0-s_cwuwol.webp'
    ]
  end

  def create
    # @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
      # rerender the new method in the same controller
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
