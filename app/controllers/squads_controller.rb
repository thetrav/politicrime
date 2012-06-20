class SquadsController < ApplicationController
  def index
    render :json => Squad.all
  end
end