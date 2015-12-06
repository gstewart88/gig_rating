class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  
  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    Venue.create(venue_params) 
    redirect_to(venues_path)
  end

  def show
  end

  def destroy
    @venue.destroy
    redirect_to(venues_path)
  end

  def edit
  end

  def update
    @venue.update(venue_params) 
    redirect_to(venues_path)
  end


  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def show_params
    params.require(:venue).permit(:name, :location, :show_ids=>[])
  end

end