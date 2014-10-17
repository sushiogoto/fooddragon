class WelcomeController < ApplicationController
  def index
    @western_item = FoodItem.where(cuisine: "Western").sample
    @asian_item = FoodItem.where(cuisine: "Asian").sample
    @adventurous_item = FoodItem.where(cuisine: "Adventurous").sample

    # /?admin=true
    @current_time = Time.now + 45.minutes
    @delivery_time = @current_time.strftime("%k:%M")
    if params[:admin] == "true"
      render 'index'
    else
      render 'under_construction', layout: false
    end

  end

  def construction
    render 'under_construction'
  end

end
