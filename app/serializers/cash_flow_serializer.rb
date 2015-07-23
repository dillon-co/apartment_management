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

class CashFlowSerializer < ActiveModel::Serializer
  attributes :id,
             :created_at,
             :updated_at,
             :total_income,
             :total_expense

  has_many :incomes, :expenses
end
