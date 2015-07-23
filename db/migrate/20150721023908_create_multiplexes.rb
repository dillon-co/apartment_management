class CreateMultiplexes < ActiveRecord::Migration
  def change
    create_table :multiplexes do |t|

      t.timestamps null: false
    end
  end
end
