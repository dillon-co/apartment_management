class TennantsController < ApplicationController
  before_action :authenticate_manager!
  before_action :authenticate_landlord!
  before_action :authenticate_tennant!
end
