class ShowReviewsController < ApplicationController
  
  load_and_authorize_resource
  # before_action :authenticate_user!

  before_action :set_show_review, only: [:show, :edit, :update, :destroy]

  def index
    @show_reviews = ShowReview.all
  end

  def new
    @show_review = ShowReview.new
  end

  def create
    # Venue.create(venue_params) 
    # redirect_to(venues_path)
    @show_review = ShowReview.new(show_review_params)
    @show_review.user = current_user

    respond_to do |format|
      if @show_review.save
        format.html { redirect_to @show_review, notice: 'Show Review was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def destroy
    @show_review.destroy
    redirect_to(show_reviews_path)
  end

  def edit
  end

  def update
    @show_review.update(show_review_params) 
    redirect_to(show_reviews_path)
  end


  private

  def set_show_review
    @show_review = ShowReview.find(params[:id])
  end

  def show_review_params
    params.require(:show_review).permit(:title, :show_id, :author, :description, :rating, :user_id)
  end


end