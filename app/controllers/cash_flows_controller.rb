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
    if @cash_flow.save
      redirect_to cash_flows_path
    else
      render 'new'
    end
  end

  private

  def cash_flow_params
    params.require(:cash_flow).permit(:incomes_attributes => [:name, :value])
  end

end
