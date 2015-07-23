class LandlordsController < ApplicationController
  before_action :authenticate_landlord!

  def index
    @landlords = Landlord.all
    @appartments = Appartment.all
  end

  def show
    @landlord = Landlord.find(params[:id])
  end

  def new
    @landlord = Landlord.new
  end

end
