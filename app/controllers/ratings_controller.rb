class RatingsController < ApplicationController
  
  before_action :set_rating, only: [:show, :edit, :update, :destroy]

  def new
    @rating = Rating.new
    @errors = flash[:errors]
  end

  def create
    @rating = Rating.create(rating_params)
    if rating.valid?
      redirect_to @rating.activity
    else
      flash[:errors] = rating.errors.full_messages
      redirect_to new_rating_path
    end
  end

  def show
  end

  def edit
  end
  
  def update
    @rating.update(rating_params)
    redirect_to @rating
  end

  def destroy
    @rating.destroy
    redirect_to @rating
  end

  private

  def set_rating
    @rating = Rating.find(params[:id])
  end

  def rating_params
    params.require(:rating).permit(:parent_id, :activity_id, :num_rating, :description)
  end

end