class PerformancesController < ApplicationController

  before_action :authenticate_user!

  load_and_authorize_resource
  before_action :set_performance, only: [:show, :edit, :update, :destroy]

  def index
    if params[:name]
      @performance = Performance.new
      @performances = @performance.search_result("#{params[:name]}")
        # binding.pry
    else
      @performances = Performance.all
    end
  end

  def show
  end

  def new
    @performance = Performance.new
  end

  def edit
  end

  def create
    @performance = Performance.new(performance_params)
    respond_to do |format|
      if @performance.save
        format.html { redirect_to @performance, notice: 'Performance was successfully created.' }
      else
        format.html { render :new }
      end
    end

  end


  def update
    respond_to do |format|
      if @performance.update(performance_params)
        format.html { redirect_to @performance, notice: 'Performance was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @performance.destroy
    respond_to do |format|
      format.html { redirect_to performances_url, notice: 'Performance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
  def set_performance
    @performance = Performance.find(params[:id])
  end

  def performance_params
    params.require(:performance).permit(:show_id, :venue_id, :date)
  end

end