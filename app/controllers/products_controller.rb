class ProjectsController < ApplicationController

  def index
     @albums = Album.all
     render :index
   end

   def new
     @album = Album.new
     render :new
   end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path
    else
      render :new
    end  end

  def edit
    # Code for edit album form goes here.
  end

  def show
    # Code for showing a single album goes here.
  end

  def update
    # Code for updating an album goes here.
  end

  def destroy
    # Code for deleting an album goes here.
  end

  private
  def album_params
    params.require(:album).permit(:name, :genre)
  end

end
