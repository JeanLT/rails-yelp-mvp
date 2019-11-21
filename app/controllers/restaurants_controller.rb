class RestaurantsController < ApplicationController
	before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

	def index
	  @restaurants = Restaurant.all
	end

	def show
	end

	def destroy
	  @restaurant.destroy
	  redirect_to restaurants_path
	end

	def new
	  # empty template for form_for view helper
	  @restaurant = Restaurant.new
	end

	def create
	  @restaurant = Restaurant.new(restaurant_params)

	  if @restaurant.save
	    # no specific view for create
	    redirect_to restaurant_path(@restaurant)
	  else
	    # inform user that restaurant is not valid
	  end
	end

	def edit
	end

	def update
	  if @restaurant.update(restaurant_params)
	    redirect_to restaurant_path(@restaurant)
	  else
	    render :edit
	  end
	end

	private

	def set_restaurant
	  # KEEP IT DRY, this method is called thanks to before_action callback (see top)
	  @restaurant = Restaurant.find(params[:id])
	end

	def restaurant_params
	  # to avoid malicious users to corrupt HTML forms
	  params.require(:restaurant).permit(:name, :address, :stars)
	end
end
