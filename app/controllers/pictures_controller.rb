class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

def index
    @list_of_pictures=Picture.all
end

def new
end

def create
  @p = Picture.new
  @p.source = params[:source]
  @p.caption = params[:caption]
  @p.save
end

def destroy
    @picture_for_deletion = Picture.find(params[:id])
    @picture_for_deletion.destroy
end

def edit
    @picture_to_edit=Picture.find(params[:id])
end

def update
  @updated_picture = Picture.find(params[:id])
  @updated_picture.source = params[:source]
  @updated_picture.caption = params[:caption]
  @updated_picture.save
  end


end
