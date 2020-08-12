class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(strong_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def strong_params
    params.require(:review).permit(:content, :rating)
  end
end
