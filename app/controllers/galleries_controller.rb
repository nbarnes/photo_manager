class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def new
    @gallery = Gallery.new
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.new(params[:gallery])

    if @gallery.save
      redirect_to @gallery, notice: 'Gallery was successfully created.'
    end
  end

  def update
    @gallery = Gallery.find(params[:id])

    if @gallery.update_attributes(params[:gallery])
      redirect_to @gallery, notice: 'Gallery was successfully updated.'
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    redirect_to galleries_url
  end

end
