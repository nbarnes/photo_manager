class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @tag_name = params[:tag_name]
    @photos = Photo.tagged_with(@tag_name)
  end

end
