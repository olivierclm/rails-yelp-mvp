class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]
  def index
    @reviews = Review.where(restaurant_id: params[:restaurant_id])
  end
  def new
    @review = Review.new
  end
  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant.id)
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  # def set_review
  #   @review = Review.find(params[:id])
  # end
end
