class ReservationsController < ApplicationController

  def index
  end

  def new
    @asset = Asset.find params[:asset_id]
    @reservation = @asset.reservations.new
  end

  def create
    @asset = Asset.find params[:asset_id]
    @asset.reservations.build params[:reservation]
    if @asset.save
      redirect_to assets_path
    else
      render :new
    end
  end

end
