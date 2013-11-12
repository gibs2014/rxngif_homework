class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

def index
    @list_of_pictures=Picture.order("caption asc")
end

def new
end

  def create
    @p = Picture.new
    @p.source = params[:source]
    @p.caption = params[:caption]
    @p.save

    redirect_to(pictures_url, {:notice=>"picture has been created"})
  end

def destroy
    @picture_for_deletion = Picture.find(params[:id])
    @picture_for_deletion.destroy

    redirect_to(pictures_url,{:notice=>"picture has been deleted"})
end

def edit
    @picture=Picture.find(params[:id])
end

def update
  @picture = Picture.find(params[:id])
  @picture.source = params[:source]
  @picture.caption = params[:caption]
  @picture.save

  redirect_to(picture_url,{:notice => "your picture has been updated"})
    end


end
