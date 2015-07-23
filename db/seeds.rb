# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ActiveRecord::Base.transaction do
  cash_flow = CashFlow.create!
  cash_flow.incomes.create! name: 'rent', value: 123
  cash_flow.incomes.create! name: 'parking', value: 123112


  cash_flow.expenses.create! name: 'garbage', value: 11221
  cash_flow.expenses.create! name: 'utilities', value: 12345
end
