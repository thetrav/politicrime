class ManagementController < ApplicationController
  def index
    @squads = Squad.all
    @areas = Area.all
  end
end