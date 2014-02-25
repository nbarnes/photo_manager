class SearchesController < ApplicationController

  def search
    @search_term = params[:search]

    @photos = Photo.where("title ILIKE ?", "%#{ @search_term }%")
    @galleries = Gallery.where("name ILIKE ?", "%#{ @search_term }%")

    @photos_with_tag = Photo.tagged_with(@search_term)

    respond_to do |format|
      # format.json { @search_term }
      format.json do
        render :json => {:success => true, :html => ( render_partial() )}
      end
    end

  end

  def render_partial
    rendered_string = render_to_string 'searches/search', :formats => [:html]
  end

end
