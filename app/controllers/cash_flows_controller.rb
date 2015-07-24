class CashFlowsController < ApplicationController

  def index
    @cash_flows = CashFlow.all
    respond_to do |format|
      format.html
      format.json { render json: @cash_flows}
    end
  end

  def show
    @cash_flow = CashFlow.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @cash_flow }
    end
  end

  def new
    @cash_flow = CashFlow.new
  end

  def create
    @cash_flow = CashFlow.new(cash_flow_params)
    # binding.remote_pry
    if @cash_flow.save
      redirect_to cash_flows_path
    else
      render 'new'
    end
  end

  private

  def cash_flow_params
    params.require(:cash_flow).permit(
                                      incomes_attributes: [:id, :rent, :garage_rent, :laundry_income, :late_fee, :_destroy],
                                      :total_income,
                                      :gardening,
                                      :insurance,
                                      :maintenance,
                                      :off_site_management_exp,
                                      :postage_and_delivery,
                                      :painting,
                                      :building_supplies,
                                      :taxes_and_licenses,
                                      :trash,
                                      :telephone_expense,
                                      :utilities_expense,
                                      :water_and_sewage,
                                      :total_expense,
                                      :net_income,
                                      :tenant_deposit,
                                      :tennant_refund,
                                      :owner_draw,
                                      :total_adjustments,
                                      :total_cash_flow
                                      )
  end
end
