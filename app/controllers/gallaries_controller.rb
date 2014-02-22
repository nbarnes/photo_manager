class GallariesController < ApplicationController

  def index
    @gallaries = Gallary.all
  end

  def show
    @gallary = Gallary.find(params[:id])
  end

  def new
    @gallary = Gallary.new
  end

  def edit
    @gallary = Gallary.find(params[:id])
  end

  def create
    @gallary = Gallary.new(params[:gallary])

    if @gallary.save
      redirect_to @gallary, notice: 'Gallary was successfully created.'
    end
  end

  def update
    @gallary = Photo.find(params[:id])

    if @gallary.update_attributes(params[:gallary])
      redirect_to @gallary, notice: 'Gallary was successfully updated.'
    end
  end

  def destroy
    @gallary = Gallary.find(params[:id])
    @gallary.destroy
    redirect_to gallaries_url
  end

end
