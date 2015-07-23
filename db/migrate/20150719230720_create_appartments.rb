class CreateAppartments < ActiveRecord::Migration
  def change
    create_table :appartments do |t|

      t.timestamps null: false
    end
  end
end
