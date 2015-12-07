class ShowReviewsController < ApplicationController

  def index
    @show_reviews = ShowReview.all
  end

  def new
    @show_reviews = ShowReview.new
  end

  def create
    ShowReview.create(show_review_params) 
    redirect_to(show_reviews_path)
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