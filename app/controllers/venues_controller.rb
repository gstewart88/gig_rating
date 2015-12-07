class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  # load_and_authorize_resource
  # before_action :authenticate_user!
  
  def index
    @venues = Venue.all.order(:name)
  end

  def new
    @venue = Venue.new
  end

  def create
    # Venue.create(venue_params) 
    # redirect_to(venues_path)
    @venue = Venue.new(venue_params)

    respond_to do |format|
      if @venue.save
        format.html { redirect_to @venue, notice: 'Venue was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def destroy
    # @venue.destroy
    # redirect_to(venues_path)
    @venue.destroy
    respond_to do |format|
      format.html { redirect_to venues_url, notice: 'Venue was successfully destroyed.' }
    end
  end

  def edit
  end

  def update
    # @venue.update(venue_params) 
    # redirect_to(venues_path)
    respond_to do |format|
      if @venue.update(venue_params)
        format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def show_params
    params.require(:venue).permit(:name, :location, :show_ids=>[])
  end

end