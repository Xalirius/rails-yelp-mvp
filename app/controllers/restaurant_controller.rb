class RestaurantController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurants = Restaurant.find(params[:id])
  end

  # CREATION

  def new
    @restaurants = Restaurant.new
  end

  def create
    @restaurants = Restaurant.new(restaurant_params)
    @restaurants.save
    redirect_to restaurants_path
  end

  # UPDATE

  def edit
    @restaurants = Restaurant.find(params[:id])
  end

  def update
    @restaurants = Restaurant.find(params[:id])
    @restaurants.update(restaurant_params)
    redirect_to restaurants_path
  end

  # DESTROY

  def destroy
    @restaurants = Restaurant.find(restaurant_params)
    @restaurants.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
