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
    redirect_to "http://localhost:3000/all_pictures",:notice=>"picture has been created"
  end

def destroy
    @picture_for_deletion = Picture.find(params[:id])
    @picture_for_deletion.destroy
    redirect_to "http://localhost:3000/all_pictures", :notice=>"picture has been deleted"
end

def edit
    @picture_to_edit=Picture.find(params[:id])
end

def update
  @updated_picture = Picture.find(params[:id])
  @updated_picture.source = params[:source]
  @updated_picture.caption = params[:caption]
  @updated_picture.save
  redirect_to "http://localhost:3000/picture_details/#{@updated_picture.id}", :notice=>"Picture updated"
  end


end
