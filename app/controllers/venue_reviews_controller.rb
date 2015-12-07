class VenueReviewsController < ApplicationController

  def index
    @venue_reviews = VenueReview.all
  end

  def new
    @venue_reviews = VenueReview.new
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
    @venue_review.destroy
    redirect_to(venue_reviews_path)
  end

  def edit
  end

  def update
    @venue_review.update(venue_review_params) 
    redirect_to(venue_reviews_path)
  end


  private

  def set_venue_review
    @venue_review = VenueReview.find(params[:id])
  end

  def venue_review_params
    params.require(:venue_review).permit(:title, :venue_id, :author, :description, :rating, :user_id)
  end


end