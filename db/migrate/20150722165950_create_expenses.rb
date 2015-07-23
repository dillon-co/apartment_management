class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|

      t.timestamps null: false
      t.string :name, null: false
      t.float :value, default: 0 null: false
      # t.float :gardening, default: 0, null: false
      # t.float :insurance, default: 0, null: false
      # t.float :maintenance, default: 0, null: false
      # t.float :off_site_management_exp, default: 0, null: false
      # t.float :postage_and_delivery, default: 0, null: false
      # t.float :painting, default: 0, null: false
      # t.float :building_supplies, default: 0, null: false
      # t.float :taxes_and_licenses, default: 0, null: false
      # t.float :trash, default: 0, null: false
      # t.float :telephone_expense, default: 0, null: false
      # t.float :utilities_expense, default: 0, null: false
      # t.float :water_and_sewage, default: 0, null: false
      # t.integer :cash_flow_id, null: false
    end

    add_foreign_key :expenses, :cash_flows
  end
end
