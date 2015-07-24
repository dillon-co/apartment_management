class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.timestamps null: false
      # t.string :name, :null => false
      # t.float :value, :default => 0, :null => false
      t.float :rent, :default => 0, :null => false
      t.float :garage_rent, :default => 0, :null => false
      t.float :laundry_income, :default => 0, :null => false
      t.float :late_fee, :default => 0, :null => false
      t.integer :cash_flow_id, :null => false
    end
    add_foreign_key :incomes, :cash_flows
  end
end
