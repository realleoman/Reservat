class ReservationsController < ApplicationController

  def index
    @asset = Asset.find params[:asset_id]
    @reservations = @asset.reservations
  end

  def new
    @asset = Asset.find params[:asset_id]
    @reservation = @asset.reservations.new
    render :layout => false
  end

  def create

    @asset = Asset.find params[:asset_id]
    
    # params[:reservation].each do |test|
    #      puts test
    #    end
    
    @reservation = @asset.reservations.build params[:reservation]
    # if @asset.save
    if @reservation.save
      #redirect_to asset_path(@asset.id)
      redirect_to "/assets/"+@asset.id.to_s
      #render :xml
    else
      render :new, :layout => false
    end
  end

end
