class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy]

  # load_and_authorize_resource
  # before_action :authenticate_user!
  
  def index
    @shows = Show.all.order(:name)
  end

  def new
    @show = Show.new
  end

  def create
    # Show.create(show_params) 
    # redirect_to(shows_path)
    @show = Show.new(show_params)
    respond_to do |format|
      if @show.save
        format.html { redirect_to @show, notice: 'Show was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def destroy
    # @show.destroy
    # redirect_to(shows_path)
    @show.destroy
    respond_to do |format|
      format.html { redirect_to shows_url, notice: 'Show was successfully destroyed.' }
    end
  end

  # def edit
  # end

  def update
    # @show.update(show_params) 
    # redirect_to(shows_path)
    respond_to do |format|
      if @show.update(show_params)
        format.html { redirect_to @show, notice: 'Show was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  private

  def set_show
    @show = Show.find(params[:id])
  end

  def show_params
    params.require(:show).permit(:name, :date, :category_id, :venue_ids=>[])
  end


end