class FoodItemController < ApplicationController
  def show
    render "show", layout: false
  end
end
