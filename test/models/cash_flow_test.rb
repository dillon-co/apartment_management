# == Schema Information
#
# Table name: cash_flows
#
#  id                      :integer          not null, primary key
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  income                  :integer
#  rent                    :integer
#  garage_rent             :integer
#  laundry_income          :integer
#  late_fee                :integer
#  total_income            :integer
#  gardening               :integer
#  insurance               :integer
#  maintenance             :integer
#  off_site_management_exp :integer
#  postage_and_delivery    :integer
#  painting                :integer
#  building_supplies       :integer
#  taxes_and_licenses      :integer
#  trash                   :integer
#  telephone_expense       :integer
#  utilities_expense       :integer
#  water_and_sewage        :integer
#  total_expense           :integer
#  net_income              :integer
#  tenant_deposit          :integer
#  tennant_refund          :integer
#  owner_draw              :integer
#  total_adjustments       :integer
#  total_cash_flow         :integer
#

require 'test_helper'

class CashFlowTest < ActiveSupport::TestCase

  test 'it calculates total income' do
    cash_flow = CashFlow.find(1)
    total_income = cash_flow.total_income
    assert_equal(1357.0, total_income)
  end

  test 'it calculates total expense' do
    cash_flow = CashFlow.find(1)
    total = cash_flow.total_expense
    assert_equal(1357.0, total)
  end

  test 'it calculates total adjustments' do
    cash_flow = CashFlow.find(1)
    total = cash_flow.total_adjustments
    assert_equal(1325, total)
  end

  test 'it should generate income types' do
    
  end
end
