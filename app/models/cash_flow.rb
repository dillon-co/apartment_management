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

class CashFlow < ActiveRecord::Base
  belongs_to :appartment
  has_many :incomes
  has_many :expenses
  has_many :adjustments

###########################################
  def rent
    Income.income_type('rent')
  end

  def garage_rent
    Income.income_type('garage rent')
  end

  def laundry_income
    Income.income_type('laundry income')
  end

  def late_fee
    Income.income_type('late_fee')
  end


############################################
  def total_income
    incomes.map(&:value).reduce(&:+)
  end

  def total_expense
    expenses.map(&:value).reduce(&:+)
  end

  def net_income
    total_income - total_expense
  end

  def total_adjustments
    adjustments.map(&:value).reduce(&:+)
  end

  def total_cash_flow
    net_income - total_adjustments
  end
end
