class RoutesController < ApplicationController
  before_action :set_route , only: [:show, :edit ,:update, :destroy]
  before_action :reject_blank_elements, only: [:create, :update]

  def index
    @routes = Route.all
  end

  def show

  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)

    if @route.save
      redirect_to @route
    else
      render :new
      end
  end

  def edit

  end

  def update

    if @route.update(route_params)
      redirect_to @route
    else
      render :edit
    end
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

  def set_route
    @route = Route.find(params[:id])
  end

  private

  def reject_blank_elements
    params[:route][:railway_station_ids] =  params[:route][:railway_station_ids].reject(&:blank?).map(&:to_i) if params[:route][:railway_station_ids]
  end

  def route_params
    params.require(:route).permit(:name, railway_station_ids: [])
  end
end