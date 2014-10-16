class WelcomeController < ApplicationController
  def index

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
