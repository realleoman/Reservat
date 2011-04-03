class ReservationsController < ApplicationController

  def index
  end

  def new
    @asset = Asset.find params[:asset_id]
    @reservation = @asset.reservations.new
    render :layout => false
  end

	def schedule
	  @reservation = Reservation.all
	end

  def create

    @asset = Asset.find params[:asset_id]
    
    # params[:reservation].each do |test|
    #      puts test
    #    end
    
    @asset.reservations.build params[:reservation]
    if @asset.save
      #redirect_to asset_path(@asset.id)
      redirect_to "/assets/"+@asset.id.to_s
      #render :xml
    else
      render :new
    end
  end

end
