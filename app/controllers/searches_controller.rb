class SearchesController < ApplicationController

  def search
    @search_term = params[:search]

    @photos = Photo.where("title ILIKE ?", "%#{ @search_term }%")
    @galleries = Gallery.where("name ILIKE ?", "%#{ @search_term }%")

    @photos_with_tag = Photo.tagged_with(@search_term)


  end

end
