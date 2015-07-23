class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|

      t.timestamps null: false
      t.string :name, null: false
      t.float :value, default: 0, null: false
      t.integer :cash_flow_id, null: false
    end

    add_foreign_key :expenses, :cash_flows
  end
end
