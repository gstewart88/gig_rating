class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy]
  
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    Show.create(show_params) 
    redirect_to(shows_path)
  end

  def show
  end

  def destroy
    @show.destroy
    redirect_to(shows_path)
  end

  def edit
  end

  def update
    @show.update(show_params) 
    redirect_to(shows_path)
  end


  private

  def set_show
    @show = Show.find(params[:id])
  end

  def show_params
    params.require(:show).permit(:name, :date, :category_id, :venue_ids=>[])
  end


end