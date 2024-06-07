class BookmarksController < ApplicationController
  def create
    @list = List.find(params["list_id"])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    raise
    if @bookmark.save
  
      redirect_to lists_path
    else
      redirect_to lists_path
    end
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
