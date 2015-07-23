class ManagersController < ApplicationController
  before_action :authenticate_manager!
  before_action :authenticate_landlord!

  def index
    @managers = Manager.all
  end

  def show
    @manager = Manager.find(params[:id])
  end

  def new
    @manager = Manager.new
  end
end
