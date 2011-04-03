class AssetsController < ApplicationController

  def index
    @assets = Asset.all
  end

  def show
    @asset = Asset.find params[:id]
  end

  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.new params[:asset]
    if @asset.save
      redirect_to assets_path
    else
      render 'new'
    end
  end

end
