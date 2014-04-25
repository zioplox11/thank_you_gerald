class WelcomeController < ApplicationController

  def index

  end


  def reverse
      reverse_it = params[:content]
      render json: {content: reverse_it.reverse.upcase!}
  end


end

