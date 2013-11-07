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

end
