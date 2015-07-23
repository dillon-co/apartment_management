class CreateCashFlows < ActiveRecord::Migration
  def change
    create_table :cash_flows do |t|

      t.timestamps null: false

      ### coming in ###
      ### going out ##
      ### net ###

      ### adjustments ###


    end
  end
end
