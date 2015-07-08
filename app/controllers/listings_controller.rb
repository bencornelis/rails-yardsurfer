class ListingsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
    @listings = Listing.all
  end

  def create
    listing = current_user.listings.new(listing_params)
    if listing.save
      flash[:notice] = "You've created a listing"
      redirect_to listings_path
    else
      flash[:alert] = "There was an error"
      redirect_to :back
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  private
  def listing_params
    params.require(:listing).permit(:name, :location)
  end
end
