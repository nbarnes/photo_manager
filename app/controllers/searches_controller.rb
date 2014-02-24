class SearchesController < ApplicationController

  def search
    @search_term = params[:search]

    @photos = Photo.where("title LIKE ?", "%#{ @search_term }%")
    @galleries = Gallery.where("name LIKE ?", "%#{ @search_term }%")
    @tags
  end

  def show
  end

end
